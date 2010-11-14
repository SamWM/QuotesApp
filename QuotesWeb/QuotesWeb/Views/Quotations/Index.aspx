<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<IEnumerable<QuotesWeb.Models.Quotation>>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
	Quotations
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
	<h2>
		Quotations</h2>
	<table>
		<tr>
			<th>
			</th>
			<th>
				Quote
			</th>
			<th>
				Author
			</th>
			<th>
				When
			</th>
			<th>
				Updated
			</th>
		</tr>
		<% foreach (var item in Model)
	 { %>
		<tr>
			<td>
				<%: Html.ActionLink("Edit", "Edit", new { id=item.Id }) %>
				|
				<%: Html.ActionLink("Details", "Details", new { id=item.Id })%>
				|
				<%: Html.ActionLink("Delete", "Delete", new { id=item.Id })%>
			</td>
			<td>
				<%: item.Quote.TruncateString(30) %>
			</td>
			<td>
				<%: item.Author %>
			</td>
			<td>
				<%: item.When.TruncateString(30) %>
			</td>
			<td>
				<%: Html.DisplayFor(model => item.LastUpdated, "DateTimeShort") %>
			</td>
		</tr>
		<% } %>
	</table>
	<p>
		<%: Html.ActionLink("Create New", "Create") %>
	</p>
</asp:Content>
