<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Đặt Tour</title>
    <style>
        /* Định dạng cho tiêu đề */
        h1 {
            font-size: 45px;
            color: #333;
            text-align: center;
            margin-top: 50px;
            margin-bottom: 30px;
        }
    </style>
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
</head>
<body>
<div class="container">
    <h1> Đặt Tour </h1> <h2>${tour.name} ${tour.departureSchedule}</h2>
    <h3> Thông tin khách hàng</h3>
    <form action="/Tours/comfirm" method="post" id="booking-form">
        <div class="form-group">
            <label for="name">Họ tên:</label>
            <input type="hidden" name="customValue" id="customValue" value=${tour.id}>
            <input type="text" class="form-control" id="name" name="name" required>
        </div>
        <div class="form-group">
            <label for="address">Địa chỉ:</label>
            <input type="text" class="form-control" id="address" name="address" required>
        </div>
        <div class="form-group">
            <label for="email">Email:</label>
            <input type="email" class="form-control" id="email" name="email" required>
        </div>
        <div class="form-group">
            <label for="phone">Điện thoại:</label>
            <input type="tel" class="form-control" id="phone" name="phone" required>
        </div>

        <hr>
        <h3> Thông tin chuyến đi</h3>
        <div class="form-group">
            <label for="departure_date">Ngày khởi hành:</label>
            <input type="date" class="form-control" id="departure_date" name="departure_date" required>
        </div>
        <div class="form-group">
            <label for="adults">Số người lớn:</label>
            <input type="number" class="form-control" id="adults" name="adults" required>
        </div>
        <div class="form-group">
            <label for="children">Số trẻ em:</label>
            <input type="number" class="form-control" id="children" name="children" required>
        </div>

        <hr>

        <button type="submit" class="btn btn-primary" id="submit-btn">Gửi</button>
        <button type="button" class="btn btn-default" id="cancel-btn"><a href="/Tours/showTours">Hủy</a></button>
    </form>
</div>

<!-- Thêm đoạn mã JavaScript để kiểm tra và xác nhận thông tin trước khi gửi -->
<script>
    $(document).ready(function () {
        // Kiểm tra thông tin trước khi gửi đơn đặt tour
        $("#booking-form").submit(function (event) {
            // Lấy giá trị từ các trường input
            var name = $("#name").val();
            var address = $("#address").val();
            var email = $("#email").val();
            var phone = $("#phone").val();
            var departureDate = $("#departure_date").val();
            var adults = $("#adults").val();
            var children = $("#children").val();

            // Kiểm tra các giá trị input
            if (name == "" || address == "" || email == "" || phone == "" || departureDate == "" || adults == "" || children == "") {
                alert("Vui lòng nhập đầy đủ thông tin.");
                event.preventDefault();
            } else if (isNaN(adults) || isNaN(children) || adults < 1 || children < 0) {
                alert("Vui lòng nhập số người lớn và số trẻ em hợp lệ.");
                event.preventDefault();
            } else {
                // Xác nhận thông tin trước khi gửi đơn đặt tour
                var confirmation = confirm("Bạn chắc chắn muốn đặt tour?");
                if (!confirmation) {
                    event.preventDefault();
                }
            }
        });

    });
</script>
</body>
</html>
