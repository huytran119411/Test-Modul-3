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
                <th colspan="2" ><label>Add</label></th>
            </tr>
            <tr>
                <td style=text-align:center >Product Name</td>
                <td> <input size="40" type="text" name="name" id="name" value="${product.getUsername()}" readonly></td>
            </tr>
            <tr>
                <td style=text-align:center ></td>
                <td><input size="40" type="text" name="password" id="password" value="${product.getPassword()}"></td>
            </tr>
            <tr>
                <td style=text-align:center >Phone Number</td>
                <td><input size="40" type="text" name="phone_number" id="phone_number" value="${product.getPhonenumber()}"></td>
            </tr>
            <tr>
                <td style=text-align:center >Email</td>
                <td><input size="40" type="text" name="email" id="email" value="${product.getEmail()}"></td>
            </tr>
            <tr>
                <td style=text-align:center >Address</td>
                <td><input size="40" type="text" name="address" id="address" value="${customer.getAddress()}"></td>
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
