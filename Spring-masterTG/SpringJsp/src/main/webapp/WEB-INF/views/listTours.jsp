<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>List Tours</title>
</head>
<body>
<h1>List Tours</h1>
<table border="1">
    <thead>
    <tr>
        <th>Chương trình</th>
        <th>Lịch khởi hành</th>
        <th>Giá</th>
        <th>Đặt</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach items="${tours}" var="tour">
        <tr>

            <td>${tour.description}<br/>
                ${tour.days}
            </td>
            <td>${tour.departureSchedule}</td>
            <td>${tour.price}</td>
            <td>
                <form action="${pageContext.request.contextPath}/bookings/tourDetails/${tour.id}" method="get">
                    <button type="submit">Đặt tour</button>
                </form>
            </td>
        </tr>
    </c:forEach>
    </tbody>
</table>
</body>
</html>
