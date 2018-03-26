<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
${mes}

	<form action="updatestudentrequest" method="post">
	
			<core:forEach var="stpojo" items="${edit}">
<table>
<tr><td>ID:</td><td><input type="text" name="id" value="${stpojo.id}" readonly="readonly"></td></tr>
	<tr><td>Name:</td><td><input type="text" name="name" value="${stpojo.name}"></td></tr>
	<tr><td>Email:</td><td><input type="text" name="email" value="${stpojo.email}" readonly="readonly"></td></tr>
	<tr><td>Course:</td><td><input type="text" name="course" value="${stpojo.course}"></td></tr>
	<tr><td>Fee:</td><td><input type="text" name="fee" value="${stpojo.fee}"></td></tr>
	<tr><td>Paid:</td><td><input type="text" name="paid" value="${stpojo.paid}"></td></tr>
	<tr><td>Due:</td><td><input type="text" name="due" value="${stpojo.due}"></td></tr>
	<tr><td>Address:</td><td><input type="text" name="address" value="${stpojo.address}"></td></tr>
	<tr><td>City:</td><td><input type="text" name="city" value="${stpojo.city}"></td></tr>
	<tr><td>State:</td><td><input type="text" name="state" value="${stpojo.state}"></td></tr>
	<tr><td>Country:</td><td><input type="text" name="country" value="${stpojo.country}"></td></tr>
	<tr><td>PhoneNum:</td><td><input type="text" name="phonenum" value="${stpojo.phonenum}"></td></tr>
	
			</core:forEach>



		<td><input type="submit"  value="Upadte"></td>
		
</body>
</html>