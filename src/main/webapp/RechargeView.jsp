<%-- <%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Recharge Here</title>
</head>
<body>
	<form action="RechargeController">
		<table>


			<label class="form-label" for="form3Example3cg">Contact
				Number</label>
			<input type="number" name="contactNo">
			<br>

			<label class="form-label" for="form3Example3cg">Service
				Provider</label>
			<select name="card" id="card">
				<option value="JIO">JIO</option>
				<option value="VI">VI</option>
				<option value="AIRTEL">AIRTEL</option>
				<option value="BSNL">BSNL</option>
			</select>
			<br>



			<!-- <label class="form-label" for="form3Example3cg">Ammount</label>
			<input type="number" name="amt"><br>
			 -->

			<label class="form-label" for="form3Example3cg">Amount</label>
			<select name="amt" id="amt">
				<option value="199">199</option>
				<option value="250">250</option>
				<option value="550">550</option>
				<option value="1650">1650</option>
			</select><br>

			<input type="submit" value="Recharge">
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
<title>Recharge Here</title>
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
    h1 {
        color: #333;
    }
    label {
        display: block;
        margin-top: 10px;
        color: #333;
    }
    input[type="number"], select {
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
        <h1>Recharge Here</h1>
        <form action="RechargeController">
            <label class="form-label" for="form3Example3cg">Contact Number</label>
            <input type="number" name="contactNo" id="contactNo" required>
            <label class="form-label" for="form3Example3cg">Service Provider</label>
            <select name="card" id="card" required>
                <option value="JIO">JIO</option>
                <option value="VI">VI</option>
                <option value="AIRTEL">AIRTEL</option>
                <option value="BSNL">BSNL</option>
            </select>
            <label class="form-label" for="form3Example3cg">Amount</label>
            <select name="amt" id="amt" required>
                <option value="199">199</option>
                <option value="250">250</option>
                <option value="550">550</option>
                <option value="1650">1650</option>
            </select>
            <input type="submit" value="Recharge">
        </form>
    </div>
</body>
</html>
