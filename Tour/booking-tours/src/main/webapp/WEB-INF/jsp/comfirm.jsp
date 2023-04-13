<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Xác nhận thông tin đặt tour</title>
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
</head>
<body>
<h1>Xác nhận thông tin đặt tour</h1>

<p>Họ tên: <%= request.getParameter("name") %></p>
<p>Địa chỉ: <%= request.getParameter("address") %></p>
<p>Email: <%= request.getParameter("email") %></p>
<p>Điện thoại: <%= request.getParameter("phone") %></p>
<p>Ngày khởi hành: <%= request.getParameter("departure_date") %></p>
<p>Số người lớn: <%= request.getParameter("adults") %></p>
<p>Số trẻ em: <%= request.getParameter("children") %></p>

<button type="button" class="btn btn-primary" onclick="confirmBooking()">Xác nhận</button>

<script>
    function confirmBooking() {
        alert("Đặt tour thành công! Cảm ơn đã sử dụng dịch vụ của chúng tôi!");
        location.replace("/Tours/showTours");
    }
</script>
</body>
</html>