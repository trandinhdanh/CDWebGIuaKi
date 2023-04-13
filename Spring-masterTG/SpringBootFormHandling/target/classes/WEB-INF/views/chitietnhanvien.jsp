<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Chi tiết nhân viên</title>
</head>
<body>
<h1>Chi tiết nhân viên</h1>
<table>
    <tr>
        <td>ID:</td>
        <td>${employee.empId}</td>
    </tr>
    <tr>
        <td>Tên:</td>
        <td>${employee.name}</td>
    </tr>
    <tr>
        <td>Giới tính:</td>
        <td><td>${employee.male}</td></td>
    </tr>
    <tr>
        <td>Ngày sinh:</td>
        <td>${employee.birthday}</td>
    </tr>
    <tr>
        <td>Địa chỉ:</td>
        <td>${employee.address}</td>
    </tr>
    <tr>
        <td>Số điện thoại:</td>
        <td>${employee.phone}</td>
    </tr>
    <tr>
        <td>Phòng ban:</td>
        <td>${employee.department}</td>
    </tr>
    <tr>
        <td>Chức danh:</td>
        <td>${employee.title}</td>
    </tr>
    <tr>
        <td>Mức lương:</td>
        <td>${employee.wageRate}</td>
    </tr>
</table>
<br>
<a href="${pageContext.request.contextPath}/employee/list">Trở lại danh sách nhân viên</a>
<br>
<a href="${pageContext.request.contextPath}/employee/edit/${employee.empId}">Sửa thông tin nhân viên</a>
</body>
</html>
