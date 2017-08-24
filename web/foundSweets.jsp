<%@ page import="model.entity.sweets.Sweets" %>
<%@ page import="java.util.List" %><%--
  Created by IntelliJ IDEA.
  User: HP
  Date: 21.08.2017
  Time: 22:00
  To change this template use File | Settings | File Templates.
--%>
<%@ page import="static model.entity.GiftConteiner.searchResults" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Результати пошуку</title>
</head>
<body>
<a href="NewYearGiftSheet.jsp">Повернутися</a>
<h3>Результати пошуку: </h3>
<%if (searchResults.size() > 0) { %>
<table cellpadding="5px">
    <tr bgcolor="silver">
        <td>Тип</td>
        <td>Назва</td>
        <td>Вага, г</td>
        <td>Цукор, %</td>
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
%>Нічого не знайдено
<% } %>
</body>
</html>
