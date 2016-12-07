﻿using GRA.Domain.Service;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc.Filters;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace GRA.Controllers.Filter
{
    public class SiteFilter : Attribute, IAsyncResourceFilter
    {
        private readonly SiteLookupService _siteLookupService;
        public SiteFilter(SiteLookupService siteLookupService)
        {
            _siteLookupService = Require.IsNotNull(siteLookupService, nameof(siteLookupService));
        }

        public async Task OnResourceExecutionAsync(ResourceExecutingContext context,
            ResourceExecutionDelegate next)
        {
            var httpContext = context.HttpContext;
            // if we've already fetched it on this request it's present in Items
            int? siteId = null;
            if (httpContext.User.Identity.IsAuthenticated)
            {
                // if the user is authenticated, that is their site
                siteId = new UserClaimLookup(httpContext.User).GetId(ClaimType.SiteId);
            }
            else
            {
                string sitePath = context.RouteData.Values["sitePath"]?.ToString();
                // first check, did they use a sitePath giving them a specific site
                if (!string.IsNullOrEmpty(sitePath))
                {
                    var site = await _siteLookupService.GetSiteByPath(sitePath);
                    if (site != null)
                    {
                        siteId = site.Id;
                    }
                }
                // if not check if they already have one in their session
                if (siteId == null)
                {
                    siteId = httpContext.Session.GetInt32(SessionKey.SiteId);
                }
                // if not then resort to the default
                if (siteId == null)
                {
                    siteId = await _siteLookupService.GetDefaultSiteId();
                }
            }
            httpContext.Session.SetInt32(SessionKey.SiteId, (int)siteId);
            httpContext.Items[SessionKey.SiteId] = (int)siteId;

            await next();
        }
    }
}