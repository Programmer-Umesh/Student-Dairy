<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
    <%-- <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> --%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="s"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"  %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<%
String name=request.getParameter("Name");
String date1=request.getParameter("date1");
String atn=request.getParameter("atn");
String cls=request.getParameter("class1");
%>
<c:set var="n" value="<%=name%>" />
<c:set var="d" value="<%=date1%>" />
<c:set var="a" value="<%=atn%>" />
<c:set var="c" value="<%=cls%>" />
<s:setDataSource var="con" driver="com.mysql.cj.jdbc.Driver" url="jdbc:mysql://localhost:3306/login_page" user="root" password="umesh" />
 
 
 <s:update var="q" dataSource="${con}" >insert into Attendance values("${n}","${d}","${a}","${c}")</s:update>
 <c:out value="successfully"></c:out>
</body>
</html>