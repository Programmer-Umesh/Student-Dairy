<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import ="java.sql.*"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="s"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
html,
body {
background-color:#e6edf7;
	height: 100%;
}

body {
	margin: 0;
	background: linear-gradient(45deg, #49a09d, #5f2c82);
	font-family: sans-serif;
	font-weight: 100;
}

.container {
	position: absolute;
	top: 50%;
	left: 50%;
	transform: translate(-50%, -50%);
}

table {
	width: 800px;
	border-collapse: collapse;
	overflow: hidden;
	box-shadow: 0 0 20px rgba(0,0,0,0.1);
	height: 350px;
	width: 1000px;
}

th,
td {
	padding: 15px;
	background-color: rgba(255,255,255,0.2);
	color: #fff;
}

th {
	text-align: left;
}

thead {
	th {
		background-color: #55608f;
	}
}

tbody {
	tr {
		&:hover {
			background-color: rgba(255,255,255,0.3);
		}
	}
	td {
		position: relative;
		&:hover {
			&:before {
				content: "";
				position: absolute;
				left: 0;
				right: 0;
				top: -9999px;
				bottom: -9999px;
				background-color: rgba(255,255,255,0.2);
				z-index: -1;
			}
		}
	}
}
</style>
</head>
<body>

<s:setDataSource var="con" driver="com.mysql.cj.jdbc.Driver" url="jdbc:mysql://localhost:3306/login_page" user="root" password="umesh" />
<%
  
 //String str1=(String)session.getAttribute("user");
 
 //String str=(String)s1.getAttribute("user");
 String v=(String)session.getAttribute("user");
//out.print(str1);
//out.print(v); 
 
 

 
 
//String v="viju";
%>
 <c:set var="v" value="<%=v%>"/>
<s:query var="q" dataSource="${con}" > select (class_year) from signup_page where User_Name="${v}"</s:query>
<c:forEach var="row1" items="${q.rows}">
 
 <c:set var="b" value="${row1.class_year}"/>
</c:forEach>
  
<%--  <c:out value="${b}" />
 <c:out value="hello"/> --%>
  
 <%-- <c:out value="${b}"/> --%>
 <%-- <c:set var="b1" value="BCA-I"/> --%>
 <c:if test="${b eq 'BCA-I' }">
<s:query var="r" dataSource="${con}"  >select * from Bca_I </s:query>
 </c:if>
 <c:if test="${b eq 'BCA-III' }">
<s:query var="r" dataSource="${con}"  >select * from Bca_III </s:query>
 </c:if>
 <c:if test="${b eq 'BCA-II' }">
<s:query var="r" dataSource="${con}"  >select * from Bca_II </s:query>
 </c:if>
 
<div class="container">
<table >
		<thead>
			<tr>
				<th>Sunday </th>
				<th>Monday </th>
				<th>Tuesday </th>
				<th>Wednesday </th>
				<th>Thursday </th>
				<th>Saturday </th>
				
			</tr>
			</thead>
 
<c:forEach var="result" items="${r.rows}">

	 
		 
		<tbody>
			<tr>
				<td> <c:out value="${result.monday}"/></td>
				<td><c:out value="${result.tuesday}"/> </td>
				<td><c:out value="${result.wednesday}"/> </td>
				<td><c:out value="${result.thursaday}"/> </td>
				<td><c:out value="${result.friday}"/> </td>
				<td><c:out value="${result.satuarday}"/> </td>
			</tr>
	        
		</tbody>
		</c:forEach>
	</table>
	 
</div>
</body>

</html>