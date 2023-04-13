<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
    <title>Danh sách nhân viên</title>
    <!-- Nạp các file CSS của Bootstrap -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
    <style>
        a {
            color: white;
            text-decoration: none;
        }
        td>a {
            color: blue;
            text-decoration: none;
        }
    </style>
</head>
<body>
<div class="container">
    <h1>DANH SÁCH NHÂN VIÊN</h1>
    <h3>Tổng số nhân viên ${totalEmployee}</h3>
    <form id="form" action="xoa" method="post">
        <div class="btn-group btn-group-sm mb-3" role="group" aria-label="Basic example">
            <button type="button" class="btn btn-primary"><a
                    href="${pageContext.request.contextPath}/nhan-vien/them-moi">Thêm nhân viên</a></button>
            <button type="submit" class="btn btn-danger" id="btnDelete">Xóa</button>
        </div>
        <table class="table table-bordered table-hover">
            <thead class="table-success">
            <tr>
                <th>Sửa</th>
                <th>Chọn</th>
                <th>Mã NV</th>
                <th>Họ tên</th>
                <th>Ngày sinh</th>
            </tr>
            </thead>
            <tbody>
            <c:forEach items="${employeeList}" var="employee">
                <tr>
                    <td>
                        <button class="btn btn-primary"><a
                                href="${pageContext.request.contextPath}/nhan-vien/chinh-sua/${employee.empId}">Sửa</a>
                        </button>
                    </td>
                    <td><input type="checkbox" name="selectedRow" id="selectedRow" value="${employee.empId}"></td>
                    <td><a href="/nhan-vien/chi-tiet/${employee.empId}">${employee.empId}</a></td>
                    <td>${employee.name}</td>
                    <td>${employee.birthday.date}/${employee.birthday.month+1}/${employee.birthday.year+1900}</td>
                </tr>
            </c:forEach>
            </tbody>
        </table>
    </form>
</div>
<script>
    var btn = document.getElementById("btnDelete");
    var form = document.getElementById("form");
    btn.addEventListener("click", function () {
        form.submit();
    });
</script>
<!-- Nạp các file JavaScript của Bootstrap -->
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>

</body>
</html>
