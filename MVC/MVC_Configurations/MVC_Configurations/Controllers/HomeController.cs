﻿using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Configuration;

namespace MVC_Configurations.Controllers
{
    public class HomeController : Controller
    {
        // GET: Home
        public ActionResult Index()
        {
            var conString = ConfigurationManager.ConnectionStrings["conn"].ConnectionString;
            ViewBag.ConString = conString;

            return View();
        }
    }
}