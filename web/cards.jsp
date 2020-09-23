<%@ page import="com.github.javafaker.Faker" %>
<%@ page import="java.util.List" %>
<%@ page import="servlets.Cards" %>

<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>servlets.Cards</title>
</head>
<body>

<div>
    <h1>Hellooooo</h1>
        <%

             List<Cards> cards = (List<Cards>) request.getAttribute("cards");

            if (cards != null && !cards.isEmpty()) {
                out.println("<ui>");
                for (Cards s : cards) {
                    out.println("<li style = 'margin-top: 20px; font-size:16px;'>" + s.authorName+ "<br>"+ s.title + "</li>");
                }
                out.println("</ui>");
            } else out.println("<p>There are no cards yet! </p>");
        %>
    <div>
    </div>
</body>
</html>