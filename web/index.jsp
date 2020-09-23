<%--
  Created by IntelliJ IDEA.
  User: Asus
  Date: 21.09.2020
  Time: 9:47
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h2>Введите желаемое количество карточек!</h2>
<form method="post" action="${pageContext.request.contextPath}/cards"><label>
    <input type="number" name="number">
</label>
<button onclick="location.href='/cards'">Ввод</button>
</form>
</body>
</html>
