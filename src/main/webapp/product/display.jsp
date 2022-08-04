<%--
  Created by IntelliJ IDEA.
  User: haphong
  Date: 04/08/2022
  Time: 08:26
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<button><a href="/product/add.jsp">Add</a></button>
<table border="1" width="300px">
    <tr>
        <th>ID</th>
        <th>Tên Sản Phẩm</th>
        <th>Giá</th>
        <th>Số Lượng</th>
        <th>Màu Sắc</th>
        <th>Mô Tả</th>
        <th>Danh Mục</th>
        <th colspan="2">Action</th>
    </tr>
    <c:forEach items="${products}" var="p">
        <tr>
            <td>${p.getId()}</td>
            <td>${p.getProductName()}</td>
            <td>${p.getPrice()}</td>
            <td>${p.getQuantity()}</td>
            <td>${p.getColor()}</td>
            <td>${p.getDescription()}</td>
            <td>${p.getCategory()}</td>
            <td><button><a href="/Customer?action=edit&id=${c.getId()}">Edit</a></button></td>
            <td><button><a href="/Customer?action=delete&id=${c.getId()}">Delete</a></button></td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
