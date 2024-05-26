<%@page import="Bank.Model.Registor"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

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
    h3 {
        color: #333;
    }
    a {
        display: inline-block;
        margin-top: 20px;
        padding: 10px 20px;
        color: #fff;
        background-color: #007bff;
        text-decoration: none;
        border-radius: 4px;
    }
    a:hover {
        background-color: #0056b3;
    }
</style>

</head>
<body>
 <div class="container">
	<%!List<Registor> lst;%>
	<%
	if (!session.isNew()) {
		lst = (List<Registor>) session.getAttribute("Reglst");
		Registor r = lst.get(0);
	%>
	<h3>
		Welcome
		<%=r.getCust_name()%></h3>
	<%
	}
	%>
	<a href="LoginView.jsp">Login</a>
	</div>
</body>
</html>