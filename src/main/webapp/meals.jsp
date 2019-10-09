<%@ page import="java.util.List" %>
<%@ page import="ru.javawebinar.topjava.model.MealTo" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <title>Meals</title>
</head>
<body>
<h3><a href="index.html">Home</a></h3>
<hr>
<h2>Meals</h2>
<%
    List<MealTo> names = (List<MealTo>) request.getAttribute("mealList");

    out.println("<table>");
    out.println("<tr>");
    for (MealTo m : names) {
        out.println("<th>" + m.getDateTime().toLocalDate() + "   " + "</th>");
    }
    out.println("</tr>");

    out.println("<tr>");
    for (MealTo m : names) {
        if (m.getExcess())
            out.println("<td><font size=\"3\" color=\"red\">" + m.getDescription() + "   " + "</font></td>");
        else
            out.println("<td><font size=\"3\" color=\"green\">" + m.getDescription() + "</font></td>");
    }
    out.println("</tr>");

    out.println("</table>");
%>
</body>
</html>