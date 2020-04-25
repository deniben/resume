<%--
  Created by IntelliJ IDEA.
  User: Deniben
  Date: 4/20/2020
  Time: 1:46 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:forEach var="profile" items="${profiles}">
    <div class="card border-primary mb-3">
        <div class="card-body text-dark">
            <div class="row">
                <div class="col-md-2">
                    <div class="left-block">
                        <a href="${pageContext.request.contextPath}/${profile.uid}"><img
                                src="${pageContext.request.contextPath}/${profile.smallPhoto}"
                                align="${profile.firstName}"
                                class="photo"></a>
                    </div>
                </div>
                <div class="col-md-10">
                    <div class="media-body">
                        <a href="${profile.uid}">Details</a>
                        <h4 class="media">
                            <a href="${profile.uid}">${profile.id} ${profile.firstName} ${profile.lastName}</a>
                        </h4>
                        <strong>${profile.objective}</strong>
                        <p>${profile.city}, ${profile.country}</p>
                        <blockquote>
                            <small>${profile.summary}</small>
                        </blockquote>
                    </div>
                </div>
            </div>
        </div>
    </div>
</c:forEach>
