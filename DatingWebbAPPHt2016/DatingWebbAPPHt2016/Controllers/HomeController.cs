using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace DatingWebbAPPHt2016.Controllers
{
    public class HomeController : Controller
    {

        // GET // /home/index
        
        public ActionResult Index()
        {
            return View();
        }
       

        // GET // /home/about
        public ActionResult About()
        {
            
                ViewBag.Message = "Detta är början på en sida för bönder som söker fruar! Något stort är på gång här!";

                return View();
           
           
        }
        [HttpPost]
        public ActionResult Contact(string message)
        {
            //TODO : send message to HQ
            ViewBag.Message = "Thanks we got your message";

            return View();
        }

        public ActionResult Contact()
        {
            ViewBag.Message = "Having trouble? Send us a message";

            return View();
        }
        
    }
}