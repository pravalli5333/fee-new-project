<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<script type="text/javascript">

function addAccountant() {
	document.forms[0].action="${pageContext.request.contextPath}/addaccount";
	document.forms[0].submit();
}

function viewAccountant() {
	document.forms[0].action="${pageContext.request.contextPath}/viewAccount";
	document.forms[0].submit();
}
function logOut() {
	document.forms[0].action="${pageContext.request.contextPath}/logout1";
//	document.forms[0].method="post";
	document.forms[0].submit();
}
</script>
</head>
<body>

<div align="center"><h1><font color="darkSlateBlue">Admin Section</font></h1><form><table>
		<tr><td><input type="button" onclick="addAccountant()" value="Add Accountant" /></td></tr>
		<tr><td><input type="button" onclick="viewAccountant()" value="View Accountant" /></td></tr>
		<tr><td><input type="button" onclick="logOut()" value="Log Out" /></td></tr>
	
	</table></form>	</div>

</body>
</html>