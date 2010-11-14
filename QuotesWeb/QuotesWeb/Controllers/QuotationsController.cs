using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using QuotesWeb.Models;

namespace QuotesWeb.Controllers
{
	public class QuotationsController : Controller
	{
		QuotationsContainer db = new QuotationsContainer();
		//
		// GET: /Quotations/

		public ActionResult Index()
		{
			var data = from q in db.Quotations
					   orderby q.LastUpdated, q.Author
					   select q;

			return View(data);
		}

		//
		// GET: /Quotations/Details/5

		public ActionResult Details(int id)
		{
			var data = db.Quotations.FirstOrDefault(q => q.Id == id);
			return View(data);
		}

		//
		// GET: /Quotations/Create

		public ActionResult Create()
		{
			var data = new Quotation();
			return View(data);
		}

		//
		// POST: /Quotations/Create

		[HttpPost]
		public ActionResult Create(Quotation quotation)
		{
			try
			{
				quotation.LastUpdated = DateTime.Now;
				// add to database table
				db.AddToQuotations(quotation);
				// save
				db.SaveChanges();
				return RedirectToAction("Index");
			}
			catch
			{
				return View("Error");
			}
		}

		//
		// GET: /Quotations/Edit/5

		public ActionResult Edit(int id)
		{
			var data = db.Quotations.FirstOrDefault(q => q.Id == id);
			return View(data);
		}

		//
		// POST: /Quotations/Edit/5

		[HttpPost]
		public ActionResult Edit(int id, FormCollection collection)
		{
			var data = db.Quotations.FirstOrDefault(q => q.Id == id);
			try
			{
				UpdateModel(data);
				data.LastUpdated = DateTime.Now;
				db.SaveChanges();
				return RedirectToAction("Index");
			}
			catch
			{
				return View("Error");
			}
		}

		//
		// GET: /Quotations/Delete/5

		public ActionResult Delete(int id)
		{
			var data = db.Quotations.FirstOrDefault(q => q.Id == id);
			return View(data);
		}

		//
		// POST: /Quotations/Delete/5

		[HttpPost]
		public ActionResult Delete(int id, FormCollection collection)
		{
			var data = db.Quotations.FirstOrDefault(q => q.Id == id);
			try
			{
				db.DeleteObject(data);
				db.SaveChanges();
				return View("Deleted");
			}
			catch
			{
				return View("Error");
			}
		}
	}
}
