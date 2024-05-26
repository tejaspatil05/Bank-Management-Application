<%-- <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> NFET </title>
</head>
<form action="NFTController">
<h3>NFT Transfer</h3>
<body>
Account Number 
<input type="text" name="AccNo"><br>
Account Holder Name
<input type="text" name="Name"><br>
Account IFSC Code
<input type="text" name="Ifsc"><br>
Enter Ammount
<input type="text" name="amount"><br>

<input type="submit" value="NFT">
</form>
</body>
</html> --%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>NFET</title>
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
        width: 300px;
        text-align: center;
    }
    h3 {
        color: #333;
        margin-bottom: 20px;
    }
    input[type="text"] {
        width: calc(100% - 22px); /* Adjust for padding and border */
        padding: 10px;
        margin: 10px 0;
        border: 1px solid #ccc;
        border-radius: 4px;
        box-sizing: border-box;
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
        <h3>NFT Transfer</h3>
        <form action="NFTController">
            <div>
                <label for="AccNo">Account Number</label><br>
                <input type="text" id="AccNo" name="AccNo" required><br>
            </div>
            <div>
                <label for="Name">Account Holder Name</label><br>
                <input type="text" id="Name" name="Name" required><br>
            </div>
            <div>
                <label for="Ifsc">Account IFSC Code</label><br>
                <input type="text" id="Ifsc" name="Ifsc" required><br>
            </div>
            <div>
                <label for="amount">Enter Amount</label><br>
                <input type="text" id="amount" name="amount" required><br>
            </div>
            <input type="submit" value="NFT">
        </form>
    </div>
</body>
</html>
