<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Thêm nhân viên</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <style>
        a {
            color: white;
            text-decoration: none;
        }
    </style>
</head>
<body>
<div style="padding: 20px" class="container">
    <h2>Thêm nhân viên</h2>
    <form action="them-moi" method="post">
        <div class="form-group">
            <label for="empId">Mã NV:</label>
            <input type="text" class="form-control" id="empId" name="empId" maxlength="4" required>
        </div>
        <div class="form-group">
            <label for="name">Họ tên:</label>
            <input type="text" class="form-control" id="name" name="name" maxlength="30" required>
        </div>
        <div class="checkbox">
            <label><input type="checkbox" name="male">Nam</label>
        </div>
        <div class="form-group">
            <label for="birthday">Ngày sinh:</label>
            <input type="date" class="form-control" id="birthday" name="birthday">
        </div>
        <div class="form-group">
            <label for="address">Địa chỉ:</label>
            <input type="text" class="form-control" id="address" name="address" maxlength="30" required>
        </div>
        <div class="form-group">
            <label for="phone">Số điện thoại:</label>
            <input type="text" class="form-control" id="phone" name="phone" maxlength="10" required>
        </div>
        <div class="form-group">
            <label for="department">Phòng ban:</label>
            <select class="form-control" id="department" name="department">
                <option value="sx">SX</option>
                <option value="kt">KT</option>
                <option value="khtv">KHTV</option>
                <option value="bgd">BGD</option>
            </select>
        </div>
        <div class="form-group">
            <label for="title">Chức vụ:</label>
            <select class="form-control" id="title" name="title">
                <option value="gd">GD</option>
                <option value="pgd">PGD</option>
                <option value="tp">TP</option>
                <option value="pp">PP</option>
                <option value="nv">NV</option>
            </select>
        </div>
        <div class="btn-group btn-group-sm mb-3" role="group" aria-label="Basic example">
            <button type="submit" class="btn btn-primary" id="btnAddEmployee">Thêm nhân viên</button>
            <button type="button" class="btn btn-danger">
                <a href="${pageContext.request.contextPath}/nhan-vien/danh-sach">Hủy bỏ</a>
            </button>
        </div>
    </form>
</div>
</body>
</html>
