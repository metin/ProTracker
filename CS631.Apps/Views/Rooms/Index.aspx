﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<IEnumerable<CS631.Data.Room>>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Index
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <% Html.RenderPartial("SubMenu"); %>

    <div class="grid_12">
        <div class="section" > 
            <h1>List Of Rooms</h1>
            <p />
            <table width="100%">
                <thead>
                    <tr>
                        <th>Building</th>
                        <th>Code</th>
                        <th>Actions</th>
                    </tr>
                </thead>
                <tbody>
                    <% foreach (var r in Model)  { %>
                        <tr>
                            <td><%: r.BuildingId %> </td>
                            <td><%: r.Code %> </td>
                            <td class="action_buttons"> 
                                <%: Html.ActionLink("Show", "Details", new { id = r.Id }, new { @class="jqui_button_show", style="padding: 0px;" })%> 
                                <%: Html.ActionLink("Edit", "Edit", new { id = r.Id }, new { @class = "jqui_button_edit" })%> 
                                <%: Html.ActionLink("Delete", "Delete", new { id = r.Id }, new { @class = "jqui_button_delete" })%>
                            </td>
                        </tr>
                    <% } %>
                </tbody>
            </table>
        </div>

    </div>
    <div class="clear"></div> 

</asp:Content>

