<%-- <%@page import="Bank.Model.Registor"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">

.navbar{
background-color:silver;
display:flex;
justify-content:right;
align-items:center;
height:80px;
opacity: 100px;

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

button {
	display: block;
padding: 15px 25px;
margin: 0 20px;
background-color: #fff;
color:#333;
border-radius:8px;
box-shadow: 0 4px 8px rgba(0,0,0,0.1);
transition:transform 0.1s,box-shadow 0.1s;
font-weight: bold;
font-size: 16px;
}
body{
background-color: lime;
background-image: url("https://img.freepik.com/premium-vector/financial-banking-technology-concept_387612-31.jpg");
background-size: cover;
}

</style>

</head>
<body>
<div class="navbar">
	<table>
		<a href="ShowRecords">MyRecord</a><br>
		<!-- <a href="BankHome.jsp">Home</a><br> -->
			<a href="RechargeView.jsp">Recharge</a><br>
			
		
			<form action="RechargeHistoryView.jsp" method="post">
				<button>Rechange History</button><br>
			</form>
			
			
			<form action="NetBankingNFT.jsp" method="post">
				<button>NetBanking</button><br>
			</form>
			
		<form action="AddAmount.jsp" method="post">
				<button>ADD MONEY</button><br>
			</form>
			
			<a href="LogoutServletContro">Logout</a><br>
			
			
			
		
	
	

	</table>
		</div>

<h1>WELCOME BRO</h1>
<!-- <a href="DashBoard.jsp">Home</a> -->



<%!List<Registor> lst; %>
<% if(!session.isNew()){
	try{
	lst=(List<Registor>)session.getAttribute("Custlst");
	Registor r=lst.get(0);
	%>
	<table border="2px">
	<tr>
	<td>Accno</td>
	<td>Name</td>
	<td>Pan No</td>
	<td>Adhar</td>
	<td>Branch</td>
	<td>Email</td>
	<td>UserName</td>
	<td>Password</td>
	<td>Update</td>
	<td>Delete</td>
	</tr>
	
	<tr>
	<td><%=r.getAc_no() %></td>
	<td><%=r.getCust_name() %></td>
	<td><%=r.getPan_no() %></td>
	<td><%=r.getAdhar_no() %></td>
	<td><%=r.getBank_branch() %></td>
	<td><%=r.getMail() %></td>
	<td><%=r.getUser_name() %></td>
	<td><%=r.getPassword() %></td>
	<td><a href="UpdateUserInfoController"><button>Update</button> </a> </td>
	<td><a href="DeleteView.jsp"><button>Delete</button> </a> </td>
	</tr>
	</table>
	
	<% 
	}catch(Exception e){}
}
	%>


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
<title>Dashboard</title>
<style type="text/css">
    body {
        font-family: Arial, sans-serif;
        margin: 0;
        padding: 0;
        background-color: #f0f0f0;
        background-image: url("https://img.freepik.com/premium-vector/financial-banking-technology-concept_387612-31.jpg");
        background-size: cover;
        background-position: center;
        background-attachment: fixed;
    }
    .navbar {
        background-color: rgba(192, 192, 192, 0.9);
        display: flex;
        justify-content: space-between;
        align-items: center;
        height: 80px;
        padding: 0 20px;
        box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    }
    .navbar a, .navbar button {
        display: inline-block;
        padding: 10px 20px;
        margin: 0 10px;
        background-color: #fff;
        color: #333;
        border-radius: 8px;
        box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        transition: transform 0.2s, box-shadow 0.2s;
        text-decoration: none;
        font-weight: bold;
        font-size: 18px;
        cursor: pointer;
    }
    .navbar a:hover, .navbar button:hover {
        transform: scale(1.05);
        box-shadow: 0 6px 12px rgba(0, 0, 0, 0.2);
    }
    .container {
        max-width: 1200px;
        margin: 20px auto;
        padding: 20px;
        background-color: rgba(255, 255, 255, 0.9);
        border-radius: 8px;
        box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    }
    h1 {
        text-align: center;
        color: #333;
    }
    table {
        width: 100%;
        border-collapse: collapse;
        margin: 20px 0;
    }
    table, th, td {
        border: 2px solid #ccc;
    }
    th, td {
        padding: 12px;
        text-align: left;
    }
    th {
        background-color: #f4f4f4;
    }
    td button {
        background-color: #007bff;
        color: #fff;
        border: none;
        padding: 8px 12px;
        border-radius: 4px;
        cursor: pointer;
        transition: background-color 0.2s;
    }
    td button:hover {
        background-color: #0056b3;
    }
</style>
</head>
<body>
<div class="navbar">
    <a href="ShowRecords">MyRecord</a>
    <a href="RechargeView.jsp">Recharge</a>
    <form action="RechargeHistoryView.jsp" method="post">
        <button type="submit">Recharge History</button>
    </form>
    <form action="NetBankingNFT.jsp" method="post">
        <button type="submit">NetBanking</button>
    </form>
    <form action="AddAmount.jsp" method="post">
        <button type="submit">ADD MONEY</button>
    </form>
    <a href="LogoutServletContro">Logout</a>
</div>
<div class="container">
    <h1>WELCOME </h1>
    <%!List<Registor> lst; %>
    <%
        if(!session.isNew()){
            try{
                lst = (List<Registor>) session.getAttribute("Custlst");
                Registor r = lst.get(0);
    %>
    <table>
        <tr>
            <th>Accno</th>
            <th>Name</th>
            <th>Pan No</th>
            <th>Adhar</th>
            <th>Branch</th>
            <th>Email</th>
            <th>UserName</th>
            <th>Password</th>
            <th>Update</th>
            <th>Delete</th>
        </tr>
        <tr>
            <td><%= r.getAc_no() %></td>
            <td><%= r.getCust_name() %></td>
            <td><%= r.getPan_no() %></td>
            <td><%= r.getAdhar_no() %></td>
            <td><%= r.getBank_branch() %></td>
            <td><%= r.getMail() %></td>
            <td><%= r.getUser_name() %></td>
            <td><%= r.getPassword() %></td>
            <td><a href="UpdateUserInfoController"><button>Update</button></a></td>
            <td><a href="DeleteView.jsp"><button>Delete</button></a></td>
        </tr>
    </table>
    <%
            } catch(Exception e) {
                // Handle exception if necessary
            }
        }
    %>
</div>
</body>
</html>
