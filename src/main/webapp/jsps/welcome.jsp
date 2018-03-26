<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

<script type="text/javascript">
function goToAdmin() {
	document.forms[0].action="${pageContext.request.contextPath}/adminlogin";
	document.forms[0].submit();
}
function goToAccountant() {
	document.forms[0].action="${pageContext.request.contextPath}/acclogin";
//	document.forms[0].method="post";
	document.forms[0].submit();
}
</script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>  
<body><div align="center">
	<h1><font color="green">FEE MAINTAIN REGISTER</font></h1>
	<form><table>
		<tr><td><input type="button" onclick="goToAdmin()" value="Admin Login" /></td></tr> 
		<tr><td><input type="button" onclick="goToAccountant()" value="Accountant Login" /></td></tr>
	</table></form></div>
</body>
</html>
