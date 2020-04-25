<%--
  Created by IntelliJ IDEA.
  User: Deniben
  Date: 4/20/2020
  Time: 2:23 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="resume" tagdir="/WEB-INF/tags" %>
<div class="container">
    <div id="profileContainer" data-profile-total="${page.totalPages}" data-profile-number="${page.number}">
        <jsp:include page="fragment/profile-items.jsp"/>
    </div>
    <c:if test="${page.number < page.totalPages-1}">
        <div id="loadMoreContainer">
            <a href="javascript:resume.moreProfiles();" class="btn btn-primary">Load more</a>
        </div>
        <div id="loadMoreIndicator" class="text-center" style="display: none">
            loading...
        </div>
    </c:if>
</div>