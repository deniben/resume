<%--
  Created by IntelliJ IDEA.
  User: Deniben
  Date: 4/13/2020
  Time: 1:29 PM
  To change this template use File | Settings | File Templates.
--%>
<%@page import="org.slf4j.LoggerFactory" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%
    LoggerFactory.getLogger("search-form.jsp").debug("Display search-form.jsp");
%>
<html>
<body>
<h2>Input name</h2>
<c:if test="${invalid}">
    <h5 style="color: red;">Please input correct value!</h5>
</c:if>
<form action="${pageContext.request.contextPath}/search" method="post">
    <input name="query"/>
    <input type="submit" value="Search"/>
</form>
</body>
</html>