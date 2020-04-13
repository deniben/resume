<%--
  Created by IntelliJ IDEA.
  User: Deniben
  Date: 4/13/2020
  Time: 1:44 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="org.slf4j.LoggerFactory" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
    LoggerFactory.getLogger("search-result.jsp").debug("Display search-result.jsp");
%>
<html>
<body>
<h2>Your name: ${name}</h2>
<br/>
<a href="{pageContext.request.contextPath}/search">Try again</a>
</body>
</html>
