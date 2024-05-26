<%-- <%@page import="Bank.Model.Recharge"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="RechargeHistoryController">
<h2> Recharge History</h2>
<input type="submit" value="History_of_recharge">
</form>



<%!List<Recharge> lst; %>
<%if(!session.isNew()){
try{
	response.setHeader("Refresh", "2");
lst=(List<Recharge>)session.getAttribute("Rechargelst"); 
for(Recharge r:lst)
{
	%>
<table border="2px">
<h3>Recharge History</h3>

<tr>
<td>SrNo</td>
<td>Phone Number</td>
<td>Service Provider</td>
<td>Ammount</td>
<td>date</td>
<td>Balance</td>
</tr>

<tr>
<td><%=r.getIndex() %></td>
<td><%=r.getPhNo() %></td>
<td><%=r.getCard() %></td>
<td><%=r.getAmont() %></td>
<td><%=r.getDate() %></td>
<td><%=r.getBalance() %></td>

</tr>
</table>

<% 
}
}catch(Exception e){
	e.printStackTrace();
}
} 
%>
</body>
</html> --%>


<%@page import="Bank.Model.Recharge"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Recharge History</title>
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
    .container {
        max-width: 900px;
        margin: 20px auto;
        padding: 20px;
        background-color: rgba(255, 255, 255, 0.9);
        border-radius: 8px;
        box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    }
    h2, h3 {
        text-align: center;
        color: #333;
    }
    form {
        display: flex;
        justify-content: center;
        margin-bottom: 20px;
    }
    input[type="submit"] {
        padding: 10px 20px;
        background-color: #007bff;
        color: #fff;
        border: none;
        border-radius: 4px;
        cursor: pointer;
        transition: background-color 0.2s;
    }
    input[type="submit"]:hover {
        background-color: #0056b3;
    }
    table {
        width: 100%;
        border-collapse: collapse;
        margin: 20px 0;
        font-size: 16px;
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
</style>
</head>
<body>
<div class="container">
    <form action="RechargeHistoryController">
        <h2>Recharge History</h2>
        <input type="submit" value="History of recharge">
    </form>

    <%! List<Recharge> lst; %>
    <% if (!session.isNew()) {
        try {
            response.setHeader("Refresh", "2");
            lst = (List<Recharge>) session.getAttribute("Rechargelst");
            if (lst != null && !lst.isEmpty()) {
    %>
    <h3>Recharge History</h3>
    <table>
        <tr>
            <th>SrNo</th>
            <th>Phone Number</th>
            <th>Service Provider</th>
            <th>Amount</th>
            <th>Date</th>
            <th>Balance</th>
        </tr>
        <% for (Recharge r : lst) { %>
        <tr>
            <td><%= r.getIndex() %></td>
            <td><%= r.getPhNo() %></td>
            <td><%= r.getCard() %></td>
            <td><%= r.getAmont() %></td>
            <td><%= r.getDate() %></td>
            <td><%= r.getBalance() %></td>
        </tr>
        <% } %>
    </table>
    <% } else { %>
    <p>No recharge history found.</p>
    <% } %>
    <% } catch (Exception e) {
        e.printStackTrace();
    }
    } %>
</div>
</body>
</html>
