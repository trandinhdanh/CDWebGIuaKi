<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Danh sách chuyến du lịch</title>
    <style>
        /* Định dạng cho tiêu đề */
        h1 {
            font-size: 45px;
            color: #333;
            text-align: center;
            margin-top: 50px;
            margin-bottom: 30px;
        }

        /* Định dạng cho bảng */
        table {
            border-collapse: collapse;
            width: 80%;
            margin: 0 auto;
        }

        thead {
            text-align: center;
        }

        /* Định dạng cho các hàng chẵn */
        tr:nth-child(even) {
            background-color: #f2f2f2;
        }

        /* Định dạng cho các ô trong bảng */
        td, th {
            padding: 10px;
            text-align: center;
            border: 1px solid #ddd;
        }
    </style>
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
</head>
<body>
<h1>Danh sách chuyến du lịch</h1>
<table class="table table-striped table-bordered">
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
            <td><a href="/Tours/showTour/${tour.id}">${tour.name}</a><br>${tour.days}</td>
            <td>${tour.departureSchedule}</td>
            <fmt:setLocale value="vi_VN"/>
            <td><fmt:formatNumber value="${tour.price}" type="currency"/></td>
            <td><a href="/Tours/bookTour/${tour.id}">Đặt</a></td>
        </tr>
    </c:forEach>
    </tbody>
</table>
</body>
</html>