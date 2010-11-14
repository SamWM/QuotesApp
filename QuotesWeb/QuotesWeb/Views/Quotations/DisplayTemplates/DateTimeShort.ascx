<%@ Control Language="C#" Inherits="System.Web.Mvc.ViewUserControl<DateTime>" %>
<%= Model.ToShortDateString() + " " + Model.ToShortTimeString() %>