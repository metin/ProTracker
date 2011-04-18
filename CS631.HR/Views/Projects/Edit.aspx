﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<CS631.Data.Project>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Edit
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <script type="text/javascript">
        $(function () {
            $("#DateStarted").datepicker({ showOn: 'both', buttonImage: "/Public/Images/calendar.gif", buttonImageOnly: true });
            $("#DateEnded").datepicker({ showOn: 'both', buttonImage: "/Public/Images/calendar.gif", buttonImageOnly: true });
        });
	</script>

    <% Html.RenderPartial("SubMenu"); %>

    <div class="grid_2 nopadding">
        <% Html.RenderPartial("LeftMenu", Model, new ViewDataDictionary(Model)); %>
    </div>


    <div class="grid_10">
        <div class="section">
            <h1>Edit Project</h1>
            <p>Edit project <%: Model.name %></p>
            <br />
            <% using (Html.BeginForm()) { %>
                <%: Html.ValidationSummary(true) %>

                <%: Html.HiddenFor(model => model.id) %>

                <table class="details">
                    <tr>
                        <th><%: Html.LabelFor(model => model.name) %></th>
                        <td>
                            <%: Html.EditorFor(model => model.name) %>
                            <%: Html.ValidationMessageFor(model => model.name) %>
                        </td>
                    </tr>
                    <tr>
                        <th> <%: Html.LabelFor(model => model.Budget)%></th>
                        <td>
                            <%: Html.EditorFor(model => model.Budget) %>
                            <%: Html.ValidationMessageFor(model => model.Budget)%>
                        </td>
                    </tr>
                    <tr>
                        <th><%: Html.LabelFor(model => model.DateStarted)%></th>
                        <td>
                            <%: Html.EditorFor(model => model.DateStarted) %>
                            <%: Html.ValidationMessageFor(model => model.DateStarted)%>
                        </td>
                    </tr>
                    <tr>
                        <th><%: Html.LabelFor(model => model.DateEnded)%></th>
                        <td>
                            <%: Html.EditorFor(model => model.DateEnded)%>
                            <%: Html.ValidationMessageFor(model => model.DateEnded)%>
                        </td>
                    </tr>
                </table>
                <div class="clear"></div> 
                <div>
                    <input type="submit" value="Save" class="action_button"/>
                </div>
                <div class="clear"></div>

            <% } %>
        </div>
    </div>
    <div class="clear"></div> 

</asp:Content>
