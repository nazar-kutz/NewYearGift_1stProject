<%@ page import="model.entity.sweets.Sweets" %>
<%@ page import="java.util.List" %><%--
  Created by IntelliJ IDEA.
  User: HP
  Date: 21.08.2017
  Time: 22:00
  To change this template use File | Settings | File Templates.
--%>
<%@ page import="static model.entity.GiftConteiner.searchResults" %>
<%@ page import="static view.StrGlobalConstants.SEARCH_RESULTS" %>
<%@ page import="static view.StrGlobalConstants.RETURN" %>
<%@ page import="static view.StrGlobalConstants.COLSPAN_SPACE" %>
<%@ page import="static view.StrGlobalConstants.*" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title><%=SEARCH_RESULTS%></title>
</head>
<body>
<a href="NewYearGiftSheet.jsp"><%=RETURN%></a>
<h3><%=SEARCH_RESULTS + COLSPAN_SPACE%></h3>
<%if (searchResults.size() > 0) { %>
<table cellpadding="5px">
    <tr bgcolor="silver">
        <td><%=TYPE%></td>
        <td><%=NAME%></td>
        <td><%=WEIGHT%>, <%=GRAMM%></td>
        <td><%=SUGAR%>, <%=PERSENT%></td>
    </tr>
    <%for (Sweets sweets : searchResults) {%>
    <tr>
        <td>
            <%=sweets.getSweetsType().getDescription()%>
        </td>
        <td>
            <%=sweets.getName()%>
        </td>
        <td>
            <%=sweets.getWeightInGrams()%>
        </td>
        <td>
            <%=sweets.getSugarWarehouseInPercent()%>
        </td>
    </tr>
    <% } %>
</table>
<%
} else {
%><%=FOUND_NOTHING%>
<% } %>
</body>
</html>
