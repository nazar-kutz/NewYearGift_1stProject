<%@ page import="model.entity.NewYearGift" %>
<%@ page import="model.entity.sweets.Sweets" %>
<%@ page import="model.entity.sweets.SweetsType" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="static view.StrGlobalConstants.*" %><%--
  Created by IntelliJ IDEA.
  User: HP
  Date: 21.08.2017
  Time: 18:18
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title><%=NEW_YEAR_GIFT%></title>
    <link rel="stylesheet" type="text/css" href="new_year_gift_style.css">
    <%NewYearGift newYearGift = NewYearGift.getInstance();%>
</head>
<body>
<table cellpadding="10px" id="table1">
    <caption><%=CONTROL_PANNEL%></caption>
    <tr>
        <form action="sort servlet">
            <td>
                <label for="sortBy"><%=SORT_BY + COLSPAN_SPACE%></label>
            </td>
            <td>
                <select size="1" name="sortBy" id="sortBy">
                    <option value="type"><%=TYPE_SORT%></option>
                    <option value="name"><%=NAME_SORT%></option>
                    <option value="weight"><%=WEIGHT_SORT%></option>
                    <option value="warehouse" selected><%=SUGAR_WAREHOUSE_SORT%></option>
                </select>
            </td>
            <td>
                <input type="submit" class="submit" value="Відсортувати">
            </td>
        </form>
    </tr>
    <tr>
        <td colspan="3"></td>
    </tr>
    <tr>
        <td colspan="3">
            <%=FIND_CANDIES_WITH_GIVEN_SUGAR_WAREHOUSE + COLSPAN_SPACE%>
        </td>
    </tr>
    <tr>
        <form action="searching servlet">
            <td>
                <label for="min">від: </label>
                <input name="min" id="min" size="5" pattern="([0-9]{1,2})|100" placeholder="0" required>
            </td>
            <td>
                <label for="max"> до: </label>
                <input name="max" id="max" size="5" pattern="([0-9]{1,2})|100" placeholder="100" required>
            </td>
            <td>
                <input type="submit" class="submit" value="Знайти">
            </td>
        </form>
    </tr>
</table>

<br><hr size="1" color="red" width="100%"><br>

<%if (newYearGift.getSweets().size() > 0) {%>
<table cellpadding="5px" id="table2">
    <caption><%=NEW_YEAR_GIFT + COLSPAN_SPACE%></caption>
    <tr>
        <td colspan="4">
            <%=GIFT_WEIGHT + COLSPAN_SPACE%><%=newYearGift.getWeightInKilograms()%> <%=KG%> (<%=newYearGift.getWeightInGrams()%> г)
        </td>
    </tr>
    <tr id="trInfo">
        <td><%=NAME%></td>
        <td><%=TYPE%></td>
        <td><%=WEIGHT%>, <%=GRAMM%></td>
        <td><%=SUGAR%>, <%=PERSENT%></td>
    </tr>
    <%for (Sweets sweets : newYearGift.getSweets()) {%>
    <tr>
        <td>
            <%=sweets.getName()%>
        </td>
        <td>
            <%=sweets.getSweetsType().getDescription()%>
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
<% } %>
</body>
</html>
