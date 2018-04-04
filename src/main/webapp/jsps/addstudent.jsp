<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="core" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script type="text/javascript">
function back() {
	document.forms[0].action="${pageContext.request.contextPath}/back1";
//	document.forms[0].method="post";
	document.forms[0].submit();
}
	</script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

 ${message}
<div align="center">
<h1><font color="green">Student Register</font></h1>
<form action="${pageContext.request.contextPath}/addstudentrequest">
<table>
<tr><td>Name:<input type="text" name="name"></td></tr>
<tr><td>Email:<input type="text" name="email"></td></tr>
<tr><td>Course:<input type="text" name="course"></td></tr>
<tr><td>Fee:<input type="text" name="fee"></td></tr>
<tr><td>Paid:<input type="text" name="paid"></td></tr>
<tr><td>Due:<input type="text" name="due"></td></tr>
<tr><td>Address:<textarea  name="address" rows="2" cols="20"></textarea>
<tr><td>City:<input type="text" name="city"></td></tr>
<tr><td>State:<input type="text" name="state"></td></tr>
<tr><td>Country:<input type="text" name="country"></td></tr>
<tr><td>PhoneNum:<input type="text" name="phonenum"></td></tr>
</table>
<input type="submit" value="Register">

<form><input type="button" onclick="back()" value="Home Page" /></form>
</form>
</div>

</body>
</html>