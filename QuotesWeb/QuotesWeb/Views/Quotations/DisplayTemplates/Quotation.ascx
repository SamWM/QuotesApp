<%@ Control Language="C#" Inherits="System.Web.Mvc.ViewUserControl<QuotesWeb.Models.Quotation>" %>
  
        <div class="display-label">Quote</div>
        <div class="display-field"><%: Model.Quote %></div>
        
        <div class="display-label">Author</div>
        <div class="display-field"><%: Model.Author %></div>
        
        <div class="display-label">When</div>
        <div class="display-field"><%: Model.When %></div>

		<div class="display-label">Updated</div>
        <div class="display-field"><%: Html.DisplayFor(model => Model.LastUpdated, "DateTimeShort") %></div>
