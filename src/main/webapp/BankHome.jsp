<%-- <%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>NRA BANK WELCOME</title>
<style type="text/css">

.navbar{
background-color:silver;
display:flex;
justify-content:right;
align-items:center;
height:80px;

}

.navbar a{
display: block;
padding: 15px 30px;
margin: 0 20px;
background-color: #fff;
color:#333;
border-radius:8px;
box-shadow: 0 4px 8px rgba(0,0,0,0.1);
transition:transform 0.2s,box-shadow 0.2s;
font-weight: bold;
font-size: 18px;
}



</style>
</head>
<body>
<div class="navbar">
	<table>
		<a href="RegisterView.jsp">REGISTER</a><br>
		<a href="LoginView.jsp">LOGIN</a>
	
	<br>
	
	</table>
		</div>
</body>
</html> --%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>NRA BANK WELCOME</title>
    <style>
        /* CSS for navbar */
        .navbar {
            background-color: #003366; /* Dark blue background */
            padding: 20px;
            text-align: center;
            color: #fff; /* White text */
        }

        .navbar a {
            color: #fff; /* White text */
            text-decoration: none; /* Remove underline */
            padding: 10px 20px; /* Add padding */
            margin: 0 10px; /* Add margin */
            border-radius: 5px; /* Rounded corners */
            transition: background-color 0.3s; /* Smooth transition */
        }

        .navbar a:hover {
            background-color: #005580; /* Darker blue on hover */
        }

        /* CSS for aligning links in the middle */
        .navbar table {
            margin: 0 auto; /* Center align the table */
        }

        .navbar td {
            text-align: center; /* Center align the table cells */
        }
    </style>
</head>
<body>
<div class="navbar">
    <table>
        <tr>
            <td><a href="RegisterView.jsp">REGISTER</a></td>
            <td><a href="LoginView.jsp">LOGIN</a></td>
        </tr>
    </table>
</div>
</body>
</html>

