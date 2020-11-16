<%@ page import="servlets.Cards" %>
<%@ page import="java.util.List" %>

<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Cards</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
</head>
<body>
<div class="row">
    <%
        List<Cards> cards = (List<Cards>) request.getAttribute("cards");
        if (cards != null && !cards.isEmpty()) {
            for (Cards s : cards) {
    %>
        <div class="col-md-3" style="padding: 10px 10px">
            <div class="card" style="background-color: cornflowerblue">
                <div class="card-body">
                    <span class="card-title">
                        <b><%out.print(s.authorName);%></b>
                    </span>
                    <p>
                        <%
                                out.print(s.title);
                        %>
                    </p>
                </div>
            </div>
        </div>
        <%
                }} else {
                out.print("<p>There are no cards yet! </p>");
            }
        %>
</div>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
</body>
</html>