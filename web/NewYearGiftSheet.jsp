<%@ page import="model.entity.NewYearGift" %>
<%@ page import="model.entity.sweets.Sweets" %>
<%@ page import="model.entity.sweets.SweetsType" %>
<%@ page import="static model.entity.GiftConteiner.newYearGift" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %><%--
  Created by IntelliJ IDEA.
  User: HP
  Date: 21.08.2017
  Time: 18:18
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Новорічний подарунок</title>
    <link rel="stylesheet" type="text/css" href="new_year_gift_style.css">
</head>
<body>
<table cellpadding="10px" id="table1">
    <caption>Панель управління</caption>
    <tr>
        <form action="sort servlet">
            <td>
                <label for="sortBy">Сортувати за: </label>
            </td>
            <td>
                <select size="1" name="sortBy" id="sortBy">
                    <option value="type">Типом</option>
                    <option value="name">Назвою</option>
                    <option value="weight">Вагою</option>
                    <option value="warehouse" selected>Вмістом цукру</option>
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
            Знайти цукерки зі вказаним рівнем цукру (у %):
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

<table cellpadding="5px" id="table2">
    <caption>Новорічний подарунок: </caption>
    <%if (newYearGift.getSweets().size() > 0) {%>
    <tr>
        <td colspan="4">
            Вага подарунку: <%=newYearGift.getWeightInKilograms()%> кг (<%=newYearGift.getWeightInGrams()%> г)
        </td>
    </tr>
    <tr id="trInfo">
        <td>Назва</td>
        <td>Тип</td>
        <td>Вага, г</td>
        <td>Цукор, %</td>
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
    <% }
    } %>
</table>
</body>
</html>
