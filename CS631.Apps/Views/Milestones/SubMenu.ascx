﻿<%@ Control Language="C#" Inherits="System.Web.Mvc.ViewUserControl<dynamic>" %>

<% string curAction = ViewContext.Controller.ValueProvider.GetValue("action").RawValue as string; %> 


    <div id="submenu_container">
        <ul id="submenu">
            <li class="<%: curAction=="Index" ? "current" : "" %>">
                <%: Html.ActionLink("All Milestones", "Index")%>
            </li>
            <li class="<%: curAction=="Create" ? "current" : "" %>">
                <%: Html.ActionLink("New Milestone", "Create")%>
            </li>
        </ul>
    </div>
