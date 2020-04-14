<%--
  Created by IntelliJ IDEA.
  User: Deniben
  Date: 4/14/2020
  Time: 6:27 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="resume" tagdir="/WEB-INF/tags" %>
<html>
<body>
<div class="container">
    <div class="row">
        <div class="col-md-3">
            <resume:profile-main/>
            <resume:profile_languages/>
            <resume:profile-hobby/>
            <resume:profile-info/>
        </div>

        <div class="col-md-9">
            <resume:profile-objective/>
            <resume:profile-skills/>
            <resume:profile-experience/>
            <resume:profile-certificates/>
            <resume:profile-courses/>
            <resume:profile-edu/>
        </div>
    </div>

</div>
</body>
</html>