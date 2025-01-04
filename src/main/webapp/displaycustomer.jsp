<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>Customer Display</title>
    <meta charset="utf-8">
      <meta name="viewport" content="width=device-width, initial-scale=1">
      <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
      <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
      <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<style>
table {
  border-collapse: collapse;
  width: 100%;
}

th, td {
  text-align: left;
  padding: 8px;
  text-align: center;
}

tr:nth-child(even) {background-color: #f2f2f2;}
</style>
<body>

<div class="jumbotron text-center">
  <h1>Hotel Management Systems</h1>

  <p>To Provide Card Data Table...</p>
</div>
  <div class="container">

 <a href="http://localhost:8080/HotelManagementSystems/card.jsp" button type="button" class="btn btn-info">card form</a></button>

<a href="http://localhost:8080/HotelManagementSystems/cardRetrieveServlet" button type="button" class="btn btn-primary">Display Card Info</a></button>

<a href="http://localhost:8080/HotelManagementSystems/customer.jsp" button type="button" class="btn btn-info">Customer form</a></button>

<a href="http://localhost:8080/HotelManagementSystems/customerRetrieveServlet" button type="button" class="btn btn-primary">Display Customer Info</button>

<a href="http://localhost:8080/HotelManagementSystems/account.jsp" button type="button" class="btn btn-info">Account form</a></button>


<a href="http://localhost:8080/HotelManagementSystems/accountRetrieveServlet"button type="button" class="btn btn-primary">Display Account Info</a></button>


<a href="http://localhost:8080/HotelManagementSystems/depositMoney.jsp" button type="button" class="btn btn-info">Deposit Money</a></button>

<a href="http://localhost:8080/HotelManagementSystems/withdrawMoney.jsp" button type="button" class="btn btn-info">Withdraw Money</a></button>

<hr>
<a href="http://localhost:8080/BankManagementSystems/checkBalance.jsp" button type="button" class="btn btn-success">Check Balance</a></button>

    <div class="row">
<center>
<div style="overflow-x: auto;">
<h2>List of Customer</h2>
<table border="1">
    <thead>
    <tr>
        <th>customertableId</th>
        <th>name</th>
        <th>mobileNo</th>
        <th>address</th>

    </tr>
    </thead>

    <tbody>
    <c:forEach var="customer" items="${customerList}">
        <tr>
            <td>${customer.customertableId}</td>
            <td>${customer.name}</td>
            <td>${customer.mobileNo}</td>
            <td>${customer.address}</td>

        </tr>
    </c:forEach>
    </tbody>
</table>
<a href="http://localhost:8080/HotelManagementSystems" button type="button" class="btn btn-secondary">Go to Home</a></button>
<div class="row">
    <form>
    <input type="button" value="Print this page" onClick="window.print()">
   </form>
</center>
</div>
</body>
</html>