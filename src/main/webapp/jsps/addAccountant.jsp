<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<script type="text/javascript">

function addAccount() {
	document.forms[0].action="${pageContext.request.contextPath}/addAccount";
	document.forms[0].method="post";
	document.forms[0].submit();
}
function back() {
	document.forms[0].action="${pageContext.request.contextPath}/back";
//	document.forms[0].method="post";
	document.forms[0].submit();
}
</script>
</head>
<body>

<div align="center"><h1><font color="darkSlateGray">ADD ACCOUNTANT</font></h1><form><table>
<tr><td>Name:</td><td><input type="text" name="name"/></td></tr>
<tr><td>password :</td><td><input type="text" name="password"/></td></tr>
<tr><td>Email:</td><td><input type="text" name="email"/></td></tr>
<tr><td>Contact No :</td><td><input type="text" name="mobile"/></tr></table><br>
<input type="button" onclick="addAccount()" value="Add Accountant" />
<input type="button" onclick="back()" value="back" />
</form></div>
</body>
</html>