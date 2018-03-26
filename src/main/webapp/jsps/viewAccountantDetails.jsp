<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script type="text/javascript">
	function back() {
		if (confirm("Wanna back Home for Sure!!")) {
		document.forms[0].action = "${pageContext.request.contextPath}/logout";
		document.forms[0].submit();
		 } else {
		    	
		    }
			
	}
	
</script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
 
	<div align="center"><h1><font color="Navy">Accountant Details</font></h1><form>
		<table border="1" >
			<tr>
				<th>Id</th>
				<th>Name</th>
				<th>Email</th>
				<th>contact no</th>
			</tr>
			<c:forEach var="data" items="${accList}">
				<tr>
					<td>${data.id}</td>
					<td>${data.name}</td>
					<td>${data.email}</td>
					<td>${data.mobile}</td>
				</tr>
			</c:forEach>

		</table><br><br>
		<input type="button" onclick="back()" value="Back To Home">
	</form></div>
</body>
</html>