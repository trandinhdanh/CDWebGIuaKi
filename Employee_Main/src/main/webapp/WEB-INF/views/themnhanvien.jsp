<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Thêm nhân viên</title>
    <style>
        .error-message {
            color: red;
        }
    </style>
</head>
<body>
<h1>Thêm nhân viên mới</h1>
<form method="post">
    <%--@declare id="gender"--%><label for="empId">ID:</label>
    <input type="text" name="empId" id="empId" value="${employee.empId}" >
    <br>
    <label for="name">Tên:</label>
    <input type="text" name="name" id="name" value="${employee.name}" >
    <br>
    <label for="male">Giới tính:</label>
    <input type="number" name="male" id="male" value="${employee.male}" >
    <br>
    <label for="birthday">Ngày sinh:</label>
    <input type="date" name="birthday" id="birthday" value="${employee.birthday}" >
    <br>
    <label for="address">Địa chỉ:</label>
    <input type="text" name="address" id="address" value="${employee.address}" >
    <br>
    <label for="phone">Điện thoại:</label>
    <input type="text" name="phone" id="phone" value="${employee.phone}" >
    <br>
    <label for="department">Phòng ban:</label>
    <input type="text" name="department" id="department" value="${employee.department}" required>
    <br>
    <label for="title">Chức vụ:</label>
    <input type="text" name="title" id="title" value="${employee.title}" >
    <br>
    <label for="wageRate">Lương:</label>
    <input type="number" name="wageRate" id="wageRate" value="${employee.wageRate}" >
    <br>
    <input type="submit" value="Save">
</form>
<c:if test="${not empty errorMessage}">
    <p class="error-message">${errorMessage}</p>
</c:if>
</body>
</html>
