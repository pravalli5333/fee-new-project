<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

	<div align="center">
		<h3>
			<font color="darkPink">${msg}</font>
		</h3>
		<br>
		<h1>
			<font color="blue">login here</font>
		</h1>
		<form action="loginaction">
			<table>
				<tr>
					<td>Name :</td>
					<td><input type="text" name="name" /></td>
				</tr>
				<tr>
					<td>password :</td>
					<td><input type="text" name="password" /></td>
				</tr>
				<tr align="center">
					<td><input type="submit" value="login" /></td>
				</tr>
			</table>
		</form>
	</div>
</body>
</html>