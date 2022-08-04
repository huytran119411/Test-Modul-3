<%--
  Created by IntelliJ IDEA.
  User: haphong
  Date: 04/08/2022
  Time: 10:07
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<div class="main">
    <form action="/Customer?action=edit" method="post">
        <table border="1" width="300px">
            <tr>
                <th colspan="2" ><label>Edit Infomation</label></th>
            </tr>
            <tr>
                <td style=text-align:center >Id</td>
                <td> <input size="40" type="text" name="id" id="id" value="${product.getId()}" readonly></td>
            </tr>
            <tr>
                <td style=text-align:center >Tên Sản Phẩm</td>
                <td> <input size="40" type="text" name="name" id="name" value="${product.getProductName()}" readonly></td>
            </tr>
            <tr>
                <td style=text-align:center >Giá</td>
                <td><input size="40" type="text" name="price" id="price" value="${product.getPrice()}"></td>
            </tr>
            <tr>
                <td style=text-align:center >Số Lượng</td>
                <td><input size="40" type="text" name="quantity" id="quantity" value="${product.getQuantity()}"></td>
            </tr>
            <tr>
                <td style=text-align:center >Màu Sắc</td>
                <td><input size="40" type="text" name="color" id="color" value="${product.getColor()}"></td>
            </tr>
            <tr>
                <td style=text-align:center >Mô Tả</td>
                <td><input size="40" type="text" name="description" id="description" value="${product.getDescription()}"></td>
            </tr>
            <tr>
                <td style=text-align:center >Danh Mục</td>
                <td><input size="40" type="text" name="address" id="address" value="${product.getCategory()}"></td>
            </tr>
            <tr>
                <td colspan="2">
                    <button type="submit">Edit</button>
                </td>
            </tr>
        </table>
    </form>
</div>
</body>
</html>
