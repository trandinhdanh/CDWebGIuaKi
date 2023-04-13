<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Danh sách nhân viên</title>
    <style>
        body{
            position: absolute;
            left: 50%;
            transform: translate(-50%);
        }
        h1{
            text-transform: uppercase;
            color: #0B2447;
            text-align: center;
        }
        table {
            width: 800px;
            font-size: 18px;
            border-collapse: collapse;
        }

        td,
        th {
            padding: 16px 24px;
            text-align: left;
        }

        thead tr {
            background-color: #087f5b;
            color: #fff;
        }

        thead th {
            width: 25%;
        }

        tbody tr:nth-child(odd) {
            background-color: #f8f9fa;
        }

        tbody tr:nth-child(even) {
            background-color: #e9ecef;
        }
        .add{
            padding: 5px 10px;
            background: #0B2447;
            color: white;
            border-radius: 5px;
            text-decoration: underline;
        }
    </style>
</head>
<body>
<h1>Danh sách nhân viên</h1>

<a class="add" href="${pageContext.request.contextPath}/employee/add">Thêm nhân viên</a>

<table border="1">
    <thead>
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
    </thead>

    <c:forEach items="${employees}" var="employee">
        <tbody>
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
        </tbody>
    </c:forEach>
</table>

</body>
</html>
