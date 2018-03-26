<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script type="text/javascript">
function login() {
	document.forms[0].action="${pageContext.request.contextPath}/acclogin";
	document.forms[0].submit();
			
function Back() {
		document.forms[0].action="${pageContext.request.contextPath}/accback";
		document.forms[0].submit();
}
</script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h1 style="background-color:Gray;"><div align="center"><font color ="white">JNTU College</font></div></h1>
<div align="center">
<form action=${pageContext.request.contextPath}/Accountlogin>
<table>
<h2>Accountant Login</h2>
${Name}
<tr><td>User Name:</td><td><input type="text" name="uname"/></td></tr></br>
<tr><td>Password :</td><td><input type="password" name="pwd"/></td></tr></br>
</table>


<input type="button" onclick="login()" value="Login"/>
<input type="button" onclick="back()"value="Back"/>
</form>
</div>
</body>
</html>