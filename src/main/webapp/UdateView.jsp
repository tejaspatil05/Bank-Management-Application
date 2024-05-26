<%-- <%@page import="Bank.Model.Registor"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Update</title>
<style type="text/css">
form {
	align-items: center;
}
</style>
</head>
<body>

<form action="UpdateData">
	<%!List<Registor> lst;%>

	<%
	if (!session.isNew()) {
		
		lst=(List<Registor>)session.getAttribute("updatelst");
		Registor r=lst.get(0);
		%>


	<input type="text" value=<%=r.getCust_name()%> name="nm"><br>
	<input type="email" value=<%=r.getMail()%>" name="email"><br>
	<input type="text" value=<%=r.getUser_name()%>" name="unm"><br>
	<input type="password" value=<%=r.getPassword()%>" name="pass"><br>
    <input type="submit" value="Update"> 

	<%	
	}
	%>
</form>

</body>
</html> --%>

<%@page import="Bank.Model.Registor"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Update</title>
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
    form {
        background-color: #fff;
        padding: 20px;
        border-radius: 8px;
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        width: 300px;
        text-align: center;
    }
    input[type="text"], input[type="email"], input[type="password"] {
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
    <form action="UpdateData">
        <%! List<Registor> lst; %>
        <%
        if (!session.isNew()) {
            lst = (List<Registor>) session.getAttribute("updatelst");
            Registor r = lst.get(0);
        %>
            <input type="text" value="<%= r.getCust_name() %>" name="nm" required><br>
            <input type="email" value="<%= r.getMail() %>" name="email" required><br>
            <input type="text" value="<%= r.getUser_name() %>" name="unm" required><br>
            <input type="password" value="<%= r.getPassword() %>" name="pass" required><br>
            <input type="submit" value="Update"> 
        <%
        }
        %>
    </form>
</body>
</html>
