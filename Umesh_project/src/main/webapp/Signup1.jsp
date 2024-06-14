<%@page import="com.mysql.cj.protocol.ValueDecoder"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.io.*" import="java.sql.*,java.util.*" isELIgnored="false" import="javax.servlet.http.*,javax.servlet.*"  %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="s" %>
     <%-- <%@page errorPage="error.jsp" %>  --%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
 
<title>Insert title here</title>
</head>
<body>
<% 

String name=request.getParameter("name");
String uname=request.getParameter("uname");
String pass=request.getParameter("pass");
String email=request.getParameter("email");
String mobile=request.getParameter("mobile");
String gender=request.getParameter("gender");
String date1=request.getParameter("date1");
String c1=request.getParameter("class2");
String class1=request.getParameter("class1");
String dep=request.getParameter("dep");
String hsc=request.getParameter("hsc");
String ssc=request.getParameter("ssc");
String addr=request.getParameter("addr");
String nan=request.getParameter("nan");
String state=request.getParameter("state");
String dis=request.getParameter("dis");
String bno=request.getParameter("bno");
String wno=request.getParameter("wno");
String fname=request.getParameter("fname");
String bname=request.getParameter("mname");
String fmobile=request.getParameter("fmobile");
String p=request.getParameter("photo");
String r=request.getParameter("resume");
int i=0;

try{
//Part photo1=request.getPart("photo");
/* Part p=request.getPart("photo1");
//String resume=request.getParameter("resume");

 Part r=request.getPart("resume"); */
String friendname=request.getParameter("friendname");


//driver
Class.forName("com.mysql.cj.jdbc.Driver");


//establish connection
Connection Con=DriverManager.getConnection("jdbc:mysql://localhost:3306/login_page","root","umesh");
 

//statement
PreparedStatement stmt=Con.prepareStatement("insert into signup_page values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
 
    stmt.setString(1,name);
    stmt.setString(2,uname);
    stmt.setString(3,pass);
    stmt.setString(4,email);
    stmt.setString(5,mobile);
    stmt.setString(6,gender);
    stmt.setString(7,date1);
    stmt.setString(8,c1);
    stmt.setString(9,class1);
    stmt.setString(10,dep);
    stmt.setString(11,hsc);
    stmt.setString(12,ssc);
    stmt.setString(13,addr);
    stmt.setString(14,nan);
    stmt.setString(15,state);
    stmt.setString(16,dis);
    stmt.setString(17,bno);
    stmt.setString(18,wno);
    stmt.setString(19,fname);
    stmt.setString(20,bname);
    stmt.setString(21,fmobile);
    stmt.setString(22,p);
    stmt.setString(23,r);
   
   /*  InputStream p1=p.getInputStream();
    //stmt.setBlob(22,p1);
    
    InputStream r1=r.getInputStream();
    stmt.setBlob(23,r1);
    stmt.setString(24,friendname); */
    stmt.setString(24,friendname);
//execute
 i=stmt.executeUpdate();
Con.close();
}
catch(Exception e)
{

}

if(i==1)
{
	response.sendRedirect("Login.html");
}
else
{
	response.sendRedirect("signup.html");
}
//close co
 
%>
 
 <%-- <s:setDataSource  var="con" driver="com.mysql.cj.jdbc.Driver" url="jdbc:mysql://localhost:3306/login_page" user="root" password="umesh"/>
  
<s:update dataSource="${con}" var="i">insert into signup1 values(name,uname,pass,email,mobile,gender,date1,c1,class1,dep,hsc,ssc,addr,nan,state,dis,bno,wno,fname,bname,fmobile,photo,resume,friendname);</s:update>			
		<c:out value="${i}"/> 	 
		<%= "helloo" %>  --%>
</body>
</html>