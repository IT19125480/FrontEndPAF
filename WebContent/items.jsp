<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import = "com.Item" %>
<%@ page import = "com.ItemsAPI" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="Views/bootstrap.min.css">
<script src="Components/jquery-3.2.1.min.js"></script>
<script src="Components/items.js"></script>
<title>Insert title here</title>
</head>
<body>
	
	<div class="container">
		<div class="row">
			<div class="col-6">
				<h1>Items Management </h1>
				<form id="formItem" name="formItem">
					ItemCode: 
					<input id="itemCode" name="itemCode" type="text" class="form-control form-control-sm">
					 <br> 
					ItemName:
					<input id="itemName" name="itemName" type="text" class="form-control form-control-sm"> 
					<br>
				    ItemPrice:
				    <input id="itemPrice" name="itemPrice" type="text" class="form-control form-control-sm"> 
				    <br> 
				    ItemdDescription: 
				    <input id="itemDesc" name="itemDesc" type="text" class="form-control form-control-sm"> 
				    <br>
				    Quantity: 
				    <input id="Quantity" name="Quantity" type="text" class="form-control form-control-sm"> 
				    <br> 
				    
				    <input id="btnSave" name="btnSave" type="button" value="Save" class="btn btn-primary"> 
				    <input type="hidden" id="hidItemIDSave" name="hidItemIDSave" value="">
				</form>
				<div id="alertSuccess" class="alert alert-success"></div>
				<div id="alertError" class="alert alert-danger"></div>
				<br>
				
				<div id="divItemsGrid">
					<%
						Item itemObj = new Item();
						out.print(itemObj.readItem());
					%>
				</div>
			</div>
		</div>
	</div>

</body>
</html>