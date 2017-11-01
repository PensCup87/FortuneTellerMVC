using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;
using FortuneTellerMVC.Models;

namespace FortuneTellerMVC.Controllers
{
    public class CustomersController : Controller
    {
        private FortuneTellerMVCEntities db = new FortuneTellerMVCEntities();

        // GET: Customers
        public ActionResult Index()
        {
            return View(db.Customers.ToList());
        }

        // GET: Customers/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Customer Customer = db.Customers.Find(id);
            if (Customer == null)
            {
                return HttpNotFound();
            }

            //ViewBag.RetrirementAge = 0;
            if (Customer.CusAge % 2 == 0)
            {
                ViewBag.RetirementAge = 19;
            }
            else
            {
                ViewBag.RetirementAge = 4;
            }



            if (Customer.NumberOfSiblings == 0)
            {
                ViewBag.vacationHome = "Taha'a French Polynesia";
            }
            else if (Customer.NumberOfSiblings == 1)
            {
                ViewBag.vacationHome = "The Cook Islands";
            }
            else if (Customer.NumberOfSiblings == 2)
            {
                ViewBag.vacationHome = "Napa Valley";
            }
            else if (Customer.NumberOfSiblings == 3)
            {
                ViewBag.vacationHome = "Alex Ovechkin's House (Good luck drinking in a house with No Cups)";
            }
            else
            {
                ViewBag.vacationHome = "You'll be livning in a van, down by the river";
            }



            if (Customer.FavoriteColor == "red")
            {
                ViewBag.dreamMachine = "Iron Man Suit";
            }
            else if (Customer.FavoriteColor == "orange")
            {
                ViewBag.dreamMachine = "Batman's Toumbler";
            }
            else if (Customer.FavoriteColor == "yellow")
            {
                ViewBag.dreamMachine = "Matt Foley's Van with a water view";
            }
            else if (Customer.FavoriteColor == "green")
            {
                ViewBag.dreamMachine = "Jesse James Chopper";
            }
            else if (Customer.FavoriteColor == "blue")
            {
                ViewBag.dreamMachine = "Doc Brown's DeLorean";
            }
            else if (Customer.FavoriteColor == "indigo")
            {
                ViewBag.dreamMachine = "You have to train a wild elephant to ride, good luck";
            }
            else if (Customer.FavoriteColor == "violet")
            {
                ViewBag.dreamMachine = "The Wicked Witch's Broom";
            }


            if (Customer.CusBirthMonth == "January" || Customer.CusBirthMonth == "February" || Customer.CusBirthMonth == "March" || Customer.CusBirthMonth == "April")
            {
                ViewBag.bankAccount = "$2,000,000";
            }
            else if (Customer.CusBirthMonth == "May" || Customer.CusBirthMonth == "June" || Customer.CusBirthMonth == "July"  || Customer.CusBirthMonth == "August")
            {
                ViewBag.bankAccount = "$1 Billion Dollars";
            }
            else if (Customer.CusBirthMonth == "September" || Customer.CusBirthMonth == "October" || Customer.CusBirthMonth == "November" || Customer.CusBirthMonth  == "December")
            {
                ViewBag.bankAccount = "Do not pass and do not collect $200";
            }
            else
            {
                ViewBag.bankAccount = "$0.00, Zero Point Zero";
            }




            return View(Customer);
        }

        // GET: Customers/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: Customers/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "CustomerID,CusFirstName,CusLastName,CusAge,CusBirthMonth,FavoriteColor,NumberOfSiblings")] Customer customer)
        {
            if (ModelState.IsValid)
            {
                db.Customers.Add(customer);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            return View(customer);
        }

        // GET: Customers/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Customer customer = db.Customers.Find(id);
            if (customer == null)
            {
                return HttpNotFound();
            }
            return View(customer);
        }

        // POST: Customers/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "CustomerID,CusFirstName,CusLastName,CusAge,CusBirthMonth,FavoriteColor,NumberOfSiblings")] Customer customer)
        {
            if (ModelState.IsValid)
            {
                db.Entry(customer).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            return View(customer);
        }

        // GET: Customers/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Customer customer = db.Customers.Find(id);
            if (customer == null)
            {
                return HttpNotFound();
            }
            return View(customer);
        }

        // POST: Customers/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            Customer customer = db.Customers.Find(id);
            db.Customers.Remove(customer);
            db.SaveChanges();
            return RedirectToAction("Index");
        }

        protected override void Dispose(bool disposing)
        {
            if (disposing)
            {
                db.Dispose();
            }
            base.Dispose(disposing);
        }
    }
}
