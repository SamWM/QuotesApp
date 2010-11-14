<%@ Control Language="C#" Inherits="System.Web.Mvc.ViewUserControl<QuotesWeb.Models.Quotation>" %>
            <div class="editor-label">
                <%: Html.LabelFor(model => model.Quote)%>
            </div>
            <div class="editor-field">
                <%: Html.TextBoxFor(model => model.Quote, new { @class = "text-box" })%>
                <%: Html.ValidationMessageFor(model => model.Quote)%>
            </div>
            
            <div class="editor-label">
                <%: Html.LabelFor(model => model.Author) %>
            </div>
            <div class="editor-field">
                <%: Html.TextBoxFor(model => model.Author) %>
                <%: Html.ValidationMessageFor(model => model.Author) %>
            </div>
            
            <div class="editor-label">
                <%: Html.LabelFor(model => model.When) %>
            </div>
            <div class="editor-field">
                <%: Html.TextBoxFor(model => model.When) %>
                <%: Html.ValidationMessageFor(model => model.When) %>
            </div>
