<%--
  Created by IntelliJ IDEA.
  User: Deniben
  Date: 4/15/2020
  Time: 8:01 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<h3>Edit skills</h3>

<select name="category" class="form-control">
    <c:forEach var="category" items="${skillCategories}">
        <option value="${category.id}">${category.category}</option>
    </c:forEach>
</select>


