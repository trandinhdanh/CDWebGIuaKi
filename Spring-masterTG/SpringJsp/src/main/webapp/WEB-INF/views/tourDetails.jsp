<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Tour Details</title>
</head>
<body>
<h1>Tour Details</h1>
<table>
    <tr>
        <h3>${tour.description}</h3>
    </tr>
    <tr>
        <td>Số ngày : ${tour.days}</td>
    </tr>
    <tr>
        <td>Phương tiện: ${tour.transportation}</td>
    </tr>
    <tr>
        <td>Lịch khởi hành: ${tour.departureSchedule}</td>
    </tr>
    <tr>
        <td><h2>Trương trình chi tiết:</h2>
            <br/>
            ${tour.description}
        </td>
    </tr>
</table>
<table>
    <tr>
        <th>
            <a href="${pageContext.request.contextPath}/bookings/bookingTour/${tour.id}">
                <button>Đặt tour</button>
            </a>
        </th>
        <th>
            <a href="${pageContext.request.contextPath}/bookings/listTours"> CHƯƠNG TRÌNH TOUR</a>
        </th>
    </tr>
</table>
</body>
</html>
