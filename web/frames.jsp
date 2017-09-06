<%@ page import="static view.StrGlobalConstants.NEW_YEAR_GIFT" %>
<%@ page import="static view.StrGlobalConstants.YOUR_BROWSER_DOES_NOT_SHOW_FRAMES" %><%--
  Created by IntelliJ IDEA.
  User: HP
  Date: 22.08.2017
  Time: 13:17
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<head>
    <meta charset="UTF-8">
    <title><%=NEW_YEAR_GIFT%></title>
</head>
<frameset rows="100, *" frameborder="0" noresize>
    <frame src="header.html" scrolling="no">
    <frameset cols="180%, 80%">
        <frame src="index.jsp">
        <frame src="NewYearGiftSheet.jsp">
    </frameset>
    <noframes>
        <p><%=YOUR_BROWSER_DOES_NOT_SHOW_FRAMES%></p>
    </noframes>
</frameset>
</html>
