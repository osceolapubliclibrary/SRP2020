﻿using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.Rendering;
using Microsoft.AspNetCore.Mvc.Routing;
using Microsoft.AspNetCore.Mvc.ViewFeatures;
using Microsoft.AspNetCore.Razor.TagHelpers;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace GRA.Controllers.Helper
{
    [HtmlTargetElement(Attributes = "ActiveBy, routeKey, value")]
    public class ActiveTagHelper : TagHelper
    {
        private readonly IUrlHelperFactory _urlHelperFactory;

        public ActiveTagHelper(IUrlHelperFactory urlHelperFactory)
        {
            _urlHelperFactory = Require.IsNotNull(urlHelperFactory, nameof(urlHelperFactory));
        }

        [ViewContext]
        [HtmlAttributeNotBound]
        public ViewContext ViewContextData { get; set; }

        [HtmlAttributeName("routeKey")]
        public string routeKey { get; set; }

        [HtmlAttributeName("value")]
        public string value { get; set; }

        public override void Process(TagHelperContext context, TagHelperOutput output)
        {
            IUrlHelper url = _urlHelperFactory.GetUrlHelper(ViewContextData);
            var routeData = url.ActionContext.RouteData.Values;
            string routeValue = routeData[routeKey] as string ?? url.ActionContext.HttpContext.Request.Query[routeKey].ToString();

            string[] valueList = value.Split(',');

            foreach (var item in valueList)
            {
                if (String.Equals(item.Trim(), routeValue, StringComparison.OrdinalIgnoreCase))
                {
                    var existingClass = output.Attributes.FirstOrDefault(f => f.Name == "class");
                    var cssClass = string.Empty;
                    if (existingClass != null)
                    {
                        cssClass = existingClass.Value.ToString();
                        output.Attributes.Remove(existingClass);
                    }
                    cssClass = cssClass + " active";
                    var ta = new TagHelperAttribute("class", cssClass);
                    output.Attributes.Add(ta);
                }
            }
            output.Attributes.Remove(new TagHelperAttribute("ActiveBy"));
        }
    }
}
