<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Orders List</title>
</head>
<nav class="navbar navbar-expand-lg navbar-dark bg-dark" class="navbar navbar-default navbar-fixed-top">
  <a class="navbar-brand" style="color: #a7d129;font-size: 28; font-weight: bold">StockTrad-Z</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
  <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
    <div class="navbar-nav">
      <a class="nav-item nav-link active" style="font-weight: bold" href="/inboard">Home <span class="sr-only">(current)</span></a>
      <a class="nav-item nav-link active" style="font-weight: bold" href="/orders">Orders</a>
      <a class="nav-item nav-link active" style="font-weight: bold" href="/product">Trade</a>
      <a style="margin-left: 1000px"class="nav-item nav-link active" href="/">Logout</a>
    </div>
  </div>
</nav>
<body>

	<table class="table table-striped table-success" border="1" cellpadding="2" cellspacing="2">
		<tr align="center">
			<th scope="col">SNO.</th>
			<th scope="col">Share Name</th>
			<th scope="col">Share Price</th>			
			<th scope="col">Quantity</th>
			<th scope="col">Buy/Sell</th>
		</tr>
		</thead>
		 <c:forEach var="order" items="${showorder}">
			<tr align="center">
			 	<td>${order.orderid}</td>
			 	<td>${order.ordername}</td>
				<td>${order.orderprice}</td>			
				<td>${order.quantity}</td>
				<td>${order.category}</td>
			</tr>
		</c:forEach>
	</table>
</body>
</html>