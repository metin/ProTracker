﻿<%@ Control Language="C#" Inherits="System.Web.Mvc.ViewUserControl<dynamic>" %>

<% string curAction = ViewContext.Controller.ValueProvider.GetValue("action").RawValue as string; %> 
<% string curController =  ViewContext.Controller.ValueProvider.GetValue("controller").RawValue as string; %> 


<div id="menu_container">
    <ul id="menu">
        <li class="<%: curController=="Home" ? "current" : "" %>">
            <%: Html.ActionLink("Home", "Index", "Home") %>
        </li>
        <li class="<%: curController=="Divisions" ? "current" : "" %>">
                <%: Html.ActionLink("Divisions", "Index", "Divisions")%>
        </li>    

        <li class="<%: curController=="Employees" ? "current" : "" %>">
                <%: Html.ActionLink("Employees", "Index", "Employees") %>
        </li>
        <li class="<%: curController=="Projects" ? "current" : "" %>">
                <%: Html.ActionLink("Projects", "Index", "Projects") %>
        </li>    
        <li class="<%: curController=="Departments" ? "current" : "" %>">
                <%: Html.ActionLink("Departments", "Index", "Departments")%>
        </li>    

    </ul>
</div>

