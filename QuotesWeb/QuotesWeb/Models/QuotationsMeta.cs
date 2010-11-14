using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel;
using System.Web.Mvc;

namespace QuotesWeb.Models
{
	[MetadataType(typeof(QuotationMetadata))]
	public partial class Quotation
	{
		[Bind(Exclude = "Id")]
		public class QuotationMetadata
		{
			[ScaffoldColumn(false)]
			public object Id { get; set; }
			
			[Required(ErrorMessage = "Quote is required")]
			public object Quote { get; set; }
		}
	}
}