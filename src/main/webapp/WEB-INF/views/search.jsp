<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title></title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<style type="text/css">
    .bs-example{
    	margin: 20px;
    }
</style>
</head>
<body>

	<h3>Employees Search</h3>
<div class="bs-example">	
	<form action="emps" method="post">
	<table class="table">
		<tr class="success">
			<th>Name</th>
			<td><input type="text" name="ename"></td>
		</tr>
		<tr class="danger">
			<th>Job</th>
			<td><input type="text" name="job"></td>
		</tr>
		<tr class="success">
			<th>Salary</th>
			<td><input type="number" name="salMin">~<input type="number" name="salMax"></td>
		</tr>
		<tr>
			<td colspan="2"><button type="submit">search</button></td>
		</tr>
	</table>
	</form>
	${emps }
	<table>
		<thead>
		<tr>
			<th>empno</th>
			<th>ename</th>
			<th>job</th>
			<th>sal</th>
		</tr>
		</thead>
		<tbody>
			<c:forEach var="e" items="${emps }">
				<tr>
					<td>${e.empno }</td>
					<td>${e.ename }</td>
					<td>${e.job }</td>
					<td>${e.sal }</td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
	
</div>
</body>
</html>