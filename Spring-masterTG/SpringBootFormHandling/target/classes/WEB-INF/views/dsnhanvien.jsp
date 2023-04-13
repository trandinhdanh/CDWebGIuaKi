<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Danh sách nhân viên</title>
</head>
<body>
<h1>Danh sách nhân viên</h1>

<a href="${pageContext.request.contextPath}/employee/add">Thêm nhân viên</a>

<table border="1">
    <tr>
        <th>Mã NV</th>
        <th>Tên NV</th>
        <th>Giới tính</th>
        <th>Ngày sinh</th>
        <th>Địa chỉ</th>
        <th>Điện thoại</th>
        <th>Phòng ban</th>
        <th>Chức vụ</th>
        <th>Lương</th>
        <th></th>
    </tr>

    <c:forEach items="${employees}" var="employee">
        <tr>
            <td>${employee.empId}</td>
            <td>${employee.name}</td>
            <td>${employee.male}</td>
            <td>${employee.birthday}</td>
            <td>${employee.address}</td>
            <td>${employee.phone}</td>
            <td>${employee.department}</td>
            <td>${employee.title}</td>
            <td>${employee.wageRate}</td>
            <td>
                <a href="${pageContext.request.contextPath}/employee/view/${employee.empId}">Chi tiết</a>
                <a href="${pageContext.request.contextPath}/employee/edit/${employee.empId}">Sửa</a>
                <a href="${pageContext.request.contextPath}/employee/delete/${employee.empId}">Xóa</a>
            </td>
        </tr>
    </c:forEach>
</table>

</body>
</html>
