<%--
  Created by IntelliJ IDEA.
  User: Deniben
  Date: 4/14/2020
  Time: 6:05 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <jsp:include page="../section/css.jsp"></jsp:include>
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
</head>
        <body>
    <jsp:include page="../section/header.jsp"></jsp:include>
    <jsp:include page="../section/nav.jsp"></jsp:include>

        <section class="main">
            <sitemesh:write property='body'/>
        </section>
        <jsp:include page="../section/footer.jsp"></jsp:include>
        <jsp:include page="../section/js.jsp"></jsp:include>
        </body>
</html>
