<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h1>Welcome to JSP </h1>
<%!public String generateWishMsg(String uname){
	java.util.Calendar calendar=null;
	int hour =0;
	//get system date and time
	calendar =java.util.Calendar.getInstance();
	//get current hour of day
	hour = calendar.get(java.util.Calendar.HOUR_OF_DAY);
	//generate wish msg
	if(hour<=12)
		return "Good Morning"+uname;
	if(hour<=16)
	return "Good Afternoon"+uname;
	if(hour<=20)
		return "Good Evening"+uname;
	else
		return "Good Night   "+uname;
}//method
	%>
	<h1 align="center">Welcome to JSP</h1>
	<br>
	Date and Time: <%=new java.util.Date() %> <br>
	<%String user ="Hareesh Borugula"; %> <br>
	Wish Message: <%=generateWishMsg(user) %>
	
</body>
</html>