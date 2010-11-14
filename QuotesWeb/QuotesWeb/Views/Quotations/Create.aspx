<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<QuotesWeb.Models.Quotation>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
	Create Quotation
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
	<h2>
		Create Quotation</h2>
	<% using (Html.BeginForm())
	{%>
	<%: Html.ValidationSummary(true) %>
	<fieldset>
		<%: Html.EditorFor(model => model) %>
		<p>
			<input type="submit" value="Create" />
		</p>
	</fieldset>
	<% } %>
	<div>
		<%: Html.ActionLink("Back to List", "Index") %>
	</div>
</asp:Content>
