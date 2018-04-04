<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="core" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script type="text/javascript">
 
	function editstudent(email) {
		document.forms[0].action = "${pageContext.request.contextPath}/editstudentrequest1?email="+email;
		document.forms[0].method = "post";
		document.forms[0].submit();
	}
	function deletestudent(email) {
		document.forms[0].action = "${pageContext.request.contextPath}/deleterequest?email="+email;
		document.forms[0].method = "post";
		document.forms[0].submit();
	}
	function back() {
		document.forms[0].action="${pageContext.request.contextPath}/back1";
//		document.forms[0].method="post";
		document.forms[0].submit();
	}
</script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
${mes}
<font color="green"><h1>Edit Student</h1></font>
	<form action="editstudentrequest" method="post">
		<table border="2">
			<tr><th>id</th>
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
				<th>Edit</th>
			</tr>
			<core:forEach var="list" items="${stpojo}">
				<tr><td>${list.id}</td>
					<td>${list.name}</td>
					<td>${list.email}</td>
					<td>${list.course}</td>
					<td>${list.fee}</td>
					<td>${list.paid}</td>
					<td>${list.due}</td>
					<td>${list.address}</td>
					<td>${list.city}</td>
					<td>${list.state}</td>
					<td>${list.country}</td>
					<td>${list.phonenum}</td>

				
					
					<td><input type="button" onclick="editstudent('${list.email}')" value="Edit"></td>
					<td><input type="button" onclick="deletestudent('${list.email}')" value="Delete"></td>
				</tr>
			</core:forEach>
		</table>	
<form><input type="button" onclick="back()" value="Home Page" /></form>
	</form>
</body>
</html>

