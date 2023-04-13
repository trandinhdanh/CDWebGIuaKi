<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Chi tiết tour</title>
<%--    <link rel="stylesheet" href="css/bootstrap.min.css">--%>
    <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
</head>
<body>
<div class="container">

    <!-- Hiển thị thông tin chi tiết của tour -->
    <div class="row">
        <div class="col-md-8">
            <h1>${tour.name}</h1>
            <p>${tour.description}</p>
            <a href="/Tours/bookTour/${tour.id}" class="btn btn-primary">Đặt tour</a>
        </div>
        <div class="col-md-4">
            <div class="well">
                <h4>Thông tin tour</h4>
                <p>Số ngày: ${tour.days}</p>
                <p>Phương tiện: ${tour.transportation}</p>
                <p>Lịch khởi hành: ${tour.departureSchedule}</p>

                <a href="/Tours/showTours" class="btn btn-primary">Chương Trình Tours</a>
            </div>
        </div>
    </div>

</div>

</body>
</html>
