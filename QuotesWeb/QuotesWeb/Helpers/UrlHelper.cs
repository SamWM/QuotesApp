using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace QuotesWeb.Helpers
{
	public static class UrlHelpers
	{
		// From: http://weblogs.asp.net/rashid/archive/2009/04/01/asp-net-mvc-best-practices-part-1.aspx

		public static string Stylesheet(this UrlHelper helper, string fileName)
		{
			return helper.Content("~/assets/css/{0}".FormatWith(fileName));
		}
	}
}