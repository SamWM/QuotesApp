<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<QuotesWeb.Models.Quotation>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
	Delete Quotation
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
	<h2>
		Delete Quotation</h2>
	<h3>
		Are you sure you want to delete this quotation?</h3>
	<fieldset>
		<%= Html.DisplayFor(model => model) %>
	</fieldset>
	<% using (Html.BeginForm())
	{ %>
	<p>
		<input type="submit" value="Delete" />
		|
		<%: Html.ActionLink("Back to List", "Index") %>
	</p>
	<% } %>
</asp:Content>
