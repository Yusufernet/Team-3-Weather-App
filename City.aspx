<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="City.aspx.cs" Inherits="TeamA.City" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>


    </style>
    
</head>
<form id="form1" runat="server">
<select name="City">
<%
String[] municipalities = { "Helsinki", "Espoo", "Tampere", "Oulu", "Turku" };
foreach (String municipality in municipalities)
{
%>
<option value="<%= municipality %>"><%= municipality %></option>
<%
}
%>
</select>
<br /><br />
<input type="submit" value="Calculate" />
<%
    double T = 20;
    double W = 12.3;
    if (Request.Form.Count != 0)
{
    string selectedCity = Request.Form["City"]; 

    Response.Write("<div class='response'>");
    Response.Write("<h1 class='city-name'>Weather Report In " + selectedCity + "</h1>");
    Response.Write("<p class='feels-like'>Feels like " + (T * W).ToString() + "</p>");
    Response.Write("</div>");
}
    %>
   </form> 
</body>
</html>
