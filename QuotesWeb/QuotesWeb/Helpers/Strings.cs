using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace QuotesWeb.Helpers
{
	public static class Strings
	{
		// FormatWith from: http://james.newtonking.com/archive/2008/03/27/formatwith-string-format-extension-method.aspx

		public static string FormatWith(this string format, params object[] args)
		{
			if (format == null)
				throw new ArgumentNullException("format");

			return string.Format(format, args);
		}

		public static string FormatWith(this string format, IFormatProvider provider, params object[] args)
		{
			if (format == null)
				throw new ArgumentNullException("format");

			return string.Format(provider, format, args);
		}

		/// <summary>
		/// Return a truncated string
		/// </summary>
		/// <param name="input">The string to truncate</param>
		/// <param name="length">How many characters before truncating</param>
		/// <returns>The truncated string, followed by ellipses (...)</returns>
		public static string TruncateString(this string input, int length)
		{
			return TruncateString(input, length, "...");
		}

		/// <summary>
		/// Return a truncated string
		/// </summary>
		/// <param name="input">The string to truncate</param>
		/// <param name="length">How many characters before truncating</param>
		/// <param name="ellipses">The ellipses, to show after the truncated string</param>
		/// <returns>The truncated string, followed by ellipses</returns>
		public static string TruncateString(this string input, int length, string ellipses)
		{
			if (string.IsNullOrEmpty(input)) return input;
			return input.Length > length + ellipses.Length ? input.Substring(0, length) + ellipses : input;
		}
	}
}