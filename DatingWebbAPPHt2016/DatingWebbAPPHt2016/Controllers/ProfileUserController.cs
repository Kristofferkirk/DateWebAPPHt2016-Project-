﻿using DatingWebbAPPHt2016.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace DatingWebbAPPHt2016.Controllers
{
    public class ProfileUserController : Controller
    {
        // GET: ProfileUser
        public ActionResult Index()
        {
            return View();
        }

        // GET: ProfileUser/Details
        public ActionResult Details()
        {
            //Tests
            var userAccount = new UserAccount { Id = 123, Firstname = "Kristoffer", Lastname = "Kirkerud", Anvnamn = "krikih151" };


            return View(userAccount);
        }

        // GET: ProfileUser/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: ProfileUser/Create
        [HttpPost]
        public ActionResult Create(FormCollection collection)
        {
            try
            {
                // TODO: Add insert logic here

                return RedirectToAction("Index");
            }
            catch
            {
                return View();
            }
        }

        // GET: ProfileUser/Edit/5
        public ActionResult Edit(int id)
        {
            return View();
        }

        // POST: ProfileUser/Edit/5
        [HttpPost]
        public ActionResult Edit(int id, FormCollection collection)
        {
            try
            {
                // TODO: Add update logic here

                return RedirectToAction("Index");
            }
            catch
            {
                return View();
            }
        }

        // GET: ProfileUser/Delete/5
        public ActionResult Delete(int id)
        {
            return View();
        }

        // POST: ProfileUser/Delete/5
        [HttpPost]
        public ActionResult Delete(int id, FormCollection collection)
        {
            try
            {
                // TODO: Add delete logic here

                return RedirectToAction("Index");
            }
            catch
            {
                return View();
            }
        }
    }
}
