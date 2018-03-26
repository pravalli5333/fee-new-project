<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script type="text/javascript">
function studentRegistration() {
	document.forms[0].action="${pageContext.request.contextPath}/registration";
	document.forms[0].method="post";
	document.forms[0].submit();

function viewstudent() {
		document.forms[0].action="${pageContext.request.contextPath}/viewstudent";
		document.forms[0].method="post";
		document.forms[0].submit();

function editstudent() {
			document.forms[0].action="${pageContext.request.contextPath}/edit";
			document.forms[0].method="post";
			document.forms[0].submit();
			
function Duefee() {
				document.forms[0].action="${pageContext.request.contextPath}/due";
				document.forms[0].method="post";
				document.forms[0].submit();
		
</script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<div align="center">
<h1 style="background-color:Gray;"><div align="center"><font color ="white">Student Info</font></div></h1>
<form action="registration">
<table>
<tr><td><input type = "button" onclick="studentRegistration()" value = "Add Student"/></td>
<td><input type = "button" onclick="viewstudent()" value = "View Student"/></td></tr></br></br>
<tr><td><input type = "button" onclick="editstudent()" value = "Edit Student"/></td>
<td><input type = "button" onclick="Duefee()" value = "Due fee"/></td></tr></br>
</table>
<div align="center">
<input type = "button" onclick="getStudentDetails()" value = "Logout"/>
</div>
</form>
</div>
</body>
</html>l>