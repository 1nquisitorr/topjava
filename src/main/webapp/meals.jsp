<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core_1_1" %>
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
<style>
    th,td {
        border-collapse: collapse;
        border: 3px solid grey;
        width: 200px;
    }


    table {
        border-collapse: collapse;
        border: 3px solid grey;
    }

    .Excess {
        color: red;
    }

    .noExcess {
        color: green;
    }

</style>

<table>
    <tr>
        <th>Date</th>
        <th>Meal</th>
        <th>Callories</th>
    </tr>
</table>

<c:forEach items="${mealList}" var="meal">
        <table class="${meal.isExcess()? 'Excess': 'noExcess'}">
            <tr>
                <td>${meal.getDateTime().toLocalDate()} ${meal.getDateTime().toLocalTime()}</td>
                <td>${meal.getDescription()}</td>
                <td>${meal.getCalories()}</td>
            </tr>
        </table>

</c:forEach>

</body>
</html>