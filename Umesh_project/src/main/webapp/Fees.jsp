<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="javax.sql.*"  %>
     <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="s"%>
<!DOCTYPE html>
 
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
@import url("https://fonts.googleapis.com/css2?family=Poppins:wght@200;300;400;500;600;700&display=swap");
* {
  margin: 0;
  padding: 0;
  box-sizing: border-box;
  font-family: "Poppins", sans-serif;
}
body {
  min-height: 100vh;
  display: flex;
  align-items: center;
  justify-content: center;
  padding: 20px;
  background: rgb(130, 106, 251);
}
.container {
  position: relative;
  max-width: 700px;
  width: 100%;
  background: #fff;
  padding: 25px;
  border-radius: 8px;
  box-shadow: 0 0 15px rgba(0, 0, 0, 0.1);
 
}
.container header {
  font-size: 1.5rem;
  color: #333;
  font-weight: 500;
  text-align: center;
  
}
.container .form {
  margin-top: 30px;
}
.form .input-box {
  width: 100%;
  margin-top: 20px;
}
.input-box label {
  color: #333;
}
.form :where(.input-box input, .select-box) {
  position: relative;
  height: 50px;
  width: 100%;
  outline: none;
  font-size: 1rem;
  color: #707070;
  margin-top: 8px;
  border: 1px solid #ddd;
  border-radius: 6px;
  padding: 0 15px;
}
.input-box input:focus {
  box-shadow: 0 1px 0 rgba(0, 0, 0, 0.1);
}
.form .column {
  display: flex;
  column-gap: 15px;
}
.form .gender-box {
  margin-top: 20px;
}
.gender-box h3 {
  color: #333;
  font-size: 1rem;
  font-weight: 400;
  margin-bottom: 8px;
}
.form :where(.gender-option, .gender) {
  display: flex;
  align-items: center;
  column-gap: 50px;
  flex-wrap: wrap;
}
.form .gender {
  column-gap: 5px;
}
.gender input {
  accent-color: rgb(130, 106, 251);
}
.form :where(.gender input, .gender label) {
  cursor: pointer;
}
.gender label {
  color: #707070;
}
.address :where(input, .select-box) {
  margin-top: 15px;
}
.select-box select {
  height: 100%;
  width: 100%;
  outline: none;
  border: none;
  color: #707070;
  font-size: 1rem;
}
.form button {
  height: 55px;
  width: 100%;
  color: #fff;
  font-size: 1rem;
  font-weight: 400;
  margin-top: 30px;
  border: none;
  cursor: pointer;
  transition: all 0.2s ease;
  background: rgb(130, 106, 251);
}
.form button:hover {
  background: rgb(88, 56, 250);
}
/*Responsive*/
@media screen and (max-width: 500px) {
  .form .column {
    flex-wrap: wrap;
  }
  .form :where(.gender-option, .gender) {
    row-gap: 15px;
  }
}
</style>
</head>
<body>
<%

String v1=(String)session.getAttribute("user");
//out.print(str1);
//out.print(v); 
//out.println(request.getAttribute("user"));
//session.invalidate();
String v=v1;

%>

<s:setDataSource var="con" driver="com.mysql.cj.jdbc.Driver" url="jdbc:mysql://localhost:3306/login_page" user="root" password="umesh" />
 <c:set var="v" value="<%=v1%>" />
<s:query var="q" dataSource="${con}" > select * from signup_page where User_Name="${v}"</s:query>
 
<c:forEach var="row1" items="${q.rows}">
        
   <c:set var="b1" value="${row1.Name}"/>
    
   <c:set var="b2" value="${row1.Email}"/>
   <c:set var="b3" value="${row1.class_year }"></c:set>
    
      
    </c:forEach>
    
 <section class="container">
      <header>Fees Information</header>
      <form action="Home.jsp" class="form">
        <div class="input-box">
          <label>Full Name</label>
          <input type="text" readonly value=<c:out value="${b1}" /> />
        </div>
        <div class="input-box">
          <label>Email Address</label>
          <input type="text" readonly value="${b2 }" />
        </div>
        
        <div class="input-box">
          <label>Class Name</label>
          <input type="text" readonly value=<c:out value="${b3}" /> />
        </div>
        
        <div class="input-box address">
          <label>Total College Examiniation Fees</label>
          <input type="text" readonly value="18,000" />
          </div>
         
        <div class="column">
          <div class="input-box" >
            <label>Deposite</label>
            <input type="text" readonly value="10,000" />
          </div>
          <div class="input-box">
            <label>Remained</label>
            <input type="Text" readonly value="6000"  />
          </div>
        </div>
         
             
           
        <div class="input-box address">
          <label>Last day for payment of fees</label>
          <input type="text" readonly value="10-03-2024" />
           
          
            </div>
            
         
        <button >OK</button>
      </form>
     
</section>
</body>
</html>