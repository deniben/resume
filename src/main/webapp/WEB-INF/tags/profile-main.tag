<%@ tag pageEncoding="UTF-8" trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<div class="card border-primary mb-3">
    <img src="https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?cs=srgb&dl=adult-beard-boy-casual-220453.jpg&fm=jpg"
         alt="Responsive image" style="width: 100%; height: 100%"/>
    <div class="card-body text-dark">

        <p class="card-text">${fullName}</p>
    </div>
    <h6 class="text-center">
        <strong>${profile.city }Ukraine, Chernivtsi${profile.country }</strong>
    </h6>
    <h6 class="text-center">
        <strong>Age:</strong> ${profile.age }22, <strong>Birthday: </strong>25/01/1998 <fmt:formatDate
            value="${profile.birthDay }" type="date" dateStyle="medium"/>
    </h6>
    <div class="list-group contacts">
        <a href="tel:${profile.phone }" class="list-group-item"><i class="fa fa-phone"></i> +380123456789</a>
        <a href="mailto:${profile.email}" class="list-group-item"><i class="fa fa-envelope"></i> alalala@gmaol.com</a>
        <c:if test="${profile.contacts.skype != null }">
            <a href="javascript:void(0);" class="list-group-item"><i class="fa fa-skype"></i>${profile.contacts.skype}
            </a>
        </c:if>
        <c:if test="${profile.contacts.vkontakte != null }">
            <a href="${profile.contacts.vkontakte}" class="list-group-item" target="_blank"><i
                    class="fa fa-vk"></i> ${profile.contacts.vkontakte}</a>
        </c:if>
        <c:if test="${profile.contacts.facebook != null }">
            <a href="${profile.contacts.facebook}" class="list-group-item" target="_blank"><i
                    class="fa fa-facebook"></i> ${profile.contacts.facebook}</a>
        </c:if>
        <c:if test="${profile.contacts.linkedin != null }">
            <a href="${profile.contacts.linkedin}" class="list-group-item" target="_blank"><i
                    class="fa fa-linkedin"></i> ${profile.contacts.linkedin}</a>
        </c:if>
        <c:if test="${profile.contacts.github != null }">
            <a href="${profile.contacts.github}" class="list-group-item" target="_blank"><i
                    class="fa fa-github"></i> ${profile.contacts.github}</a>
        </c:if>
        <c:if test="${profile.contacts.stackoverflow != null }">
            <a href="${profile.contacts.stackoverflow}" class="list-group-item" target="_blank"><i
                    class="fa fa-stack-overflow"></i> ${profile.contacts.stackoverflow}</a>
        </c:if>
    </div>
</div>