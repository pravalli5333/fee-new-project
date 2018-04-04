<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="core" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script type="text/javascript">

 		function back() {
 			document.forms[0].action="${pageContext.request.contextPath}/back1";
// 			document.forms[0].method="post";
 			document.forms[0].submit();
 		}
	
</script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
${mes}
<font color="green"><h1>View Student</h1></font>
	<form action="viewstudentrequest" method="post">
		<table border="2">
			<tr>
			<th>ID</th>
				<th>Name</th>
				<th>Email</th>
				<th>Course</th>
				<th>Fee</th>
				<th>Paid</th>
				<th>Due</th>
				<th>Address</th>
				<th>City</th>
				<th>State</th>
				<th>Country</th>
				<th>PhoneNum</th>
			</tr>
			<core:forEach var="stpojo" items="${view}">
				<tr>
				<td>${stpojo.id}</td>
					<td>${stpojo.name}</td>
					<td>${stpojo.email}</td>
					<td>${stpojo.course}</td>
					<td>${stpojo.fee}</td>
					<td>${stpojo.paid}</td>
					<td>${stpojo.due}</td>
					<td>${stpojo.address}</td>
					<td>${stpojo.city}</td>
					<td>${stpojo.state}</td>
					<td>${stpojo.country}</td>
					<td>${stpojo.phonenum}</td>
				</tr>
			</core:forEach>
		</table>
		<form><input type="button" onclick="back()" value="Home Page" /></form>
	</form>
</body>
</html>