<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<QuotesWeb.Models.Quotation>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
	Quotation Details
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
	<h2>
		Quotation Details</h2>
	<fieldset>
		<%= Html.DisplayFor(model => model) %>
	</fieldset>
	<p>
		<%: Html.ActionLink("Edit", "Edit", new { id=Model.Id }) %>
		|
		<%: Html.ActionLink("Back to List", "Index") %>
	</p>
</asp:Content>
