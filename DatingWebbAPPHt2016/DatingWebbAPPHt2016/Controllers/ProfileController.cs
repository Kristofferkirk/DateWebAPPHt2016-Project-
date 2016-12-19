using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace DatingWebbAPPHt2016.Controllers
{
    public class ProfileController : Controller
    {
        // GET: Profile
        // Handler for profiles in the application
        public ActionResult Index()
        {
            return View();
        }
    }
}