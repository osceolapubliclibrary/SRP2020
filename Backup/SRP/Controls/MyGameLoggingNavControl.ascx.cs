﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using STG.SRP.DAL;

namespace STG.SRP.Controls
{
    public partial class MyGameLoggingNavControl : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Patron"] == null) Response.Redirect("/");
            var patron = (Patron)Session["Patron"];
        }
    }
}