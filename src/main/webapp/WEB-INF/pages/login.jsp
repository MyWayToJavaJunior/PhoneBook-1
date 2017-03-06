<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
    <title>Phone Book</title>
</head>
<body>
<div align="center">
    <c:url value="/j_spring_security_check" var="loginUrl" />
    <form action="${loginUrl}" method="POST">
        Login:<br/><input type="text" name="j_login"><br/>
        Password:<br/><input type="password" name="j_password"><br/>
        <input type="submit" />
    </form>
    <form action="/signup" method="get">
        <input type="submit"  value="Sing UP"/>
    </form>
    <c:if test="${param.error ne null}">
        <p>Wrong login or password!</p>
    </c:if>
</div>
</body>
</html>