<%-- <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<form action="AddMoneyController">
<body>
<h1>ADD MONEY IN YOUR ACCOUNT</h1>
<table>

<h3>Please Enter Your Account Number And Password</h3><br>

Add Amount<input type="number" name="amount"><br>
Account Number<input type="text" name="accNo"><br>
Password <input type="text" name="Password"><br>
<input type="submit" value="Submit">

</table>

</form>

</body>
</html> --%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add Money</title>
<style>
    body {
        font-family: Arial, sans-serif;
        background-color: #f0f0f0;
        margin: 0;
        padding: 0;
        display: flex;
        justify-content: center;
        align-items: center;
        height: 100vh;
    }
    .container {
        background-color: #fff;
        padding: 20px;
        border-radius: 8px;
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        text-align: center;
    }
    h1 {
        color: #333;
    }
    h3 {
        color: #666;
    }
    table {
        width: 100%;
        margin-top: 20px;
    }
    input[type="text"], input[type="number"], input[type="password"] {
        width: calc(100% - 22px); /* Adjust for padding and border */
        padding: 10px;
        margin: 10px 0;
        border: 1px solid #ccc;
        border-radius: 4px;
    }
    input[type="submit"] {
        padding: 10px 20px;
        color: #fff;
        background-color: #007bff;
        border: none;
        border-radius: 4px;
        cursor: pointer;
        transition: background-color 0.3s ease;
    }
    input[type="submit"]:hover {
        background-color: #0056b3;
    }
</style>
</head>
<body>
    <div class="container">
        <h1>ADD MONEY IN YOUR ACCOUNT</h1>
        <h3>Please Enter Your Account Number And Password</h3>
        <form action="AddMoneyController">
            <table>
                <tr>
                    <td>Add Amount:</td>
                    <td><input type="number" name="amount" required></td>
                </tr>
                <tr>
                    <td>Account Number:</td>
                    <td><input type="text" name="accNo" required></td>
                </tr>
                <tr>
                    <td>Password:</td>
                    <td><input type="password" name="Password" required></td>
                </tr>
                <tr>
                    <td colspan="2" style="text-align: center;">
                        <input type="submit" value="Submit">
                    </td>
                </tr>
            </table>
        </form>
    </div>
</body>
</html>
