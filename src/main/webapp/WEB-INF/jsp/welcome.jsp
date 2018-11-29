<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title>Plugin tester</title>
</head>

<body>
<h1>Главная страница</h1>
<form action = "servlet0" method = "POST">
	<table border = "0">

		<tr>
			<td><b>Назовите имя </b></td>
			<td><input type = "text" name = "parametr0"
					   value = "Zero" size = "70"/></td>
		</tr>
		<tr>
			<td><b>Назовите фамилию </b></td>
			<td><input type = "text" name = "parametr1"
					   value = "one" size = "70"/></td>
		</tr>
		<tr>
			<td><b>Назовите отчество </b></td>
			<td><input type = "text" name = "parametr2"
					   value = "two" size = "70"/></td>
		</tr>

		<tr>
			<td colspan = "2"><input type = "submit" value = "Поприветствовать"/></td>
		</tr>

	</table>
</form>

<%
	Cookie cookie = null;
	Cookie[] cookies = null;

	cookies = request.getCookies();
	if( cookies != null ){
		for (int i = 0; i < cookies.length; i++){
			cookie = cookies[i];

			if ((cookie.getName()).equals("Name")){
				out.print("Я знаю тебя как " + cookie.getValue());
			}
		}
	}else{
		out.println("<h2>нет Cookie</h2>");
	}
%>

<a href="TwoTable">Войти</a>
</body>
</html>
