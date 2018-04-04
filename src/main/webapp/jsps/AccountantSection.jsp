<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<script type="text/javascript">
function addStudent() {
	alert('test');
	document.forms[0].action="${pageContext.request.contextPath}/addStudent";
	document.forms[0].method="post";
	document.forms[0].submit();
}

function viewStudent() {
	alert('test1');

		document.forms[0].action="${pageContext.request.contextPath}/viewstudentrequest";
		document.forms[0].method="post";
		document.forms[0].submit();
}	
function editStudent() {
	alert('test1');
			document.forms[0].action="${pageContext.request.contextPath}/editstudentrequest";
			document.forms[0].method="post";
			document.forms[0].submit();
}
function duefee() {
	alert('test1');
	document.forms[0].action="${pageContext.request.contextPath}/dueFee";
	
	document.forms[0].submit();
}
function logout() {
	alert('test1');
				document.forms[0].action="${pageContext.request.contextPath}/logout1";
				
				document.forms[0].submit();
} 
</script>
</head>
<body>
<div align="center"><h1 style="background-color:Gray;"><font color ="white">Student Info</font></h1></div>
<div align="center">
<form><table>
<tr><td><input type="button" onclick="addStudent()" value="Add Student"/></td>

<td><input type="button" onclick="viewStudent()" value="View Student"/></td></tr>

<tr><td><input type="button" onclick="editStudent()" value="Edit Student"/></td>

<td><input type="button" onclick="duefee()" value="Due Fee"/></td></tr>

<tr><td><input type="button" onclick="logout()" value="logout"/></td></tr>
</table>
</form>
</div>
</body>
</html>