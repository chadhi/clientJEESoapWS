<%@page import="com.sun.corba.se.spi.orbutil.fsm.Guard.Result"%>
<%@page import="ws.BanqueWSProxy"%>
<%@page import="ws.BanqueWS"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<% 
double mt=0;
double reslt=0;
if(request.getParameter("montant")!= null){
mt=Double.parseDouble(request.getParameter("montant"));	
BanqueWSProxy stub= new BanqueWSProxy();
reslt=stub.convertToDh(mt);
}
%>
</head>
<body>
<form action="index.jsp">
Montant:<input type="text" name="montant"/ value="<%=mt%>">
<input type="submit" value="ok">
</form>
conversionde <%=mt%> en DH est:<%=reslt %>
</body>
</html>