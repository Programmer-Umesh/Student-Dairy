<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="s"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
 <title>Bootstrap Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<style>
body{
 
  /* background-image: url("https://t4.ftcdn.net/jpg/05/71/83/47/360_F_571834789_ujYbUnH190iUokdDhZq7GXeTBRgqYVwa.jpg"); */
background-color: threedhighlight;
}
.col-xs-6
{
 font-size: xx-large;
 font-style: italic;
 
 
 font-size-adjust: inherit;
}
  .col-sm-10
  {
  text-align: center;
  text-decoration: inherit;
  font-style: italic;
  text-shadow: gray;
  color: buttonhighlight;
  
  
  }
  .text-center
  {
  width: 270px;
  }
  h4
  {
  color:orange; ;
  
  
  }
  .form-control
  {
  color: teal;
  text-align: justify;
  font-size: 20px;;
  }
  h1
  {
  color: infobackground;
  margin-left: 
   
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
 
  





<hr>
<div class="container bootstrap snippet">
    <div class="row">
   <%--  <% String user="umesh96"; %> --%>
  		<div class="col-sm-10"><h1><%= "||      "+v1+"     ||" %></h1></div>
    	<div class="col-sm-2"><a href="/users" class="pull-right"><img title="profile image" class="img-circle img-responsive" src="http://www.gravatar.com/avatar/28fd20ccec6865e2d5f0e1f4446eb7bf?s=100"></a></div>
    </div>
    <div class="row">
  		<div class="col-sm-3"><!--left col-->
              

      <div class="text-center">
        <img src="https://images.pexels.com/photos/771742/pexels-photo-771742.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500" class="avatar img-circle img-thumbnail" alt= "https://static.vecteezy.com/system/resources/thumbnails/003/429/298/small/male-silhouette-neon-light-icon-gentlemen-wc-door-glowing-sign-vector.jpg" height="100">
        
      </div></hr><br>

               
          <div class="panel panel-default">
            <div class="panel-heading">Website <i class="fa fa-link fa-1x"></i></div>
            <div class="panel-body"><a href="http://localhost:8585/Umesh_project/Login.html">Umesh_Project.com</a></div>
          </div>
          
         
               
          
          
        </div><!--/col-3-->
    	<div class="col-sm-9" >
            <ul class="nav nav-tabs">
                <li class="active"><a data-toggle="tab" href="#home">Home</a></li>
               <!-- <li><a data-toggle="tab" href="#messages">Menu 1</a></li> -->
                <li><a data-toggle="tab" href="#settings">Menu 1</a></li>
              </ul>

              
          <div class="tab-content">
            <div class="tab-pane active" id="home">
                <hr>
                  <form class="form" action="##" method="post" id="registrationForm" >
                      <div class="form-group">
                      
  <c:forEach var="row1" items="${q.rows}">
       <%-- ${row1.class_year} --%> 
   <c:set var="b1" value="${row1.Name}"/>
   <c:set var="b2" value="${row1.User_Name}"/>
   <c:set var="b3" value="${row1.Password}"/>
   <c:set var="b4" value="${row1.Email}"/>
   <c:set var="b5" value="${row1.Mobile}"/>
   <c:set var="b6" value="${row1.Gender}"/>
   <c:set var="b7" value="${row1.DOB}"/>
   <%-- <c:set var="b8" value="${row1.class}"/> --%>
   <c:set var="b9" value="${row1.class_year}"/>
   <c:set var="10" value="${row1.department}"/>
   <c:set var="b11" value="${row1.Hsc}"/>
   <c:set var="b12" value="${row1.Ssc}"/>
   <c:set var="b13" value="${row1.Address}"/>
   <c:set var="b14" value="${row1.Nationality}"/>
   <c:set var="b15" value="${row1.state}"/>
   <c:set var="b16" value="${row1.district}"/>
   <c:set var="b17" value="${row1.block_no}"/>
   <c:set var="b18" value="${row1.wno}"/>
   <c:set var="b19" value="${row1.fathername}"/>
   <c:set var="b20" value="${row1.mother_name}"/>
   <c:set var="b21" value="${row1.father_mobile}"/>
   <c:set var="b22" value="${row1.friend_name}"/> 
      
    </c:forEach>
                          
                          <div class="col-xs-6">
                              <label for="first_name"><h4> Name</h4></label>
                              <b><input type="text" class="form-control"  readonly value=<c:out value="${b1} "/> > </b>
                          </div>
                      </div>
                     <%--  <div class="form-group">
                          
                          <div class="col-xs-6">
                            <label for="last_name"><h4>User Name</h4></label>
                             <b> <input type="text" class="form-control"   readonly value=<c:out value="${b2}"/>"></b>
                          </div>
                      </div> --%>
          
                      <div class="form-group">
                          
                          <div class="col-xs-6">
                              <label for="phone"><h4>Password</h4></label>
                              <b><input type="text" class="form-control" readonly value=<c:out value="${b3}" />></b>
                          </div>
                      </div>
          
                      <div class="form-group">
                          <div class="col-xs-6">
                             <label for="mobile"><h4>Email Id</h4></label>
                            <b>  <input type="text" class="form-control"readonly value=<c:out value="${b4} "/>></b>
                          </div>
                      </div>
                      
                      <div class="form-group">
                          
                          <div class="col-xs-6">
                              <label for="email"><h4>Mobile No</h4></label>
                              <input type="email" class="form-control" name="email" readonly value=<c:out value="${b5} "/>>
                          </div>
                      </div>
                      <div class="form-group">
                          
                          <div class="col-xs-6">
                              <label for="email"><h4>Gender</h4></label>
                             <b> <input type="email" class="form-control"  readonly value=<c:out value="${b6} "/>></b>
                          </div>                   </div>
                      <div class="form-group">
                          
                          <div class="col-xs-6">
                              <label for="password"><h4>Date Of Birth</h4></label>
                              <b><input type="text" class="form-control"  readonly value=<c:out value="${b7} "/> ></b>
                          </div>
                      </div>
                      <div class="form-group">
                          
                          <div class="col-xs-6">
                            <label for="password2"><h4>Class</h4></label>
                              <b><input type="text" class="form-control"  readonly value=<c:out value="${b9} "/>  ></b>
                          </div>
                      </div>
                      
                       <div class="form-group">
                          
                          <div class="col-xs-6">
                              <label for="first_name"><h4>Department</h4></label>
                             <b><input type="text" class="form-control"   readonly value=<c:out value="${b10} "/>  ></b>
                          </div>
                      </div>
                      <div class="form-group">
                          
                          <div class="col-xs-6">
                            <label for="last_name"><h4>HSC Mark</h4></label>
                              <b><input type="text" class="form-control"   readonly value=<c:out value="${b11} "/> ></b>
                          </div>
                      </div>
          
                    <!--   <div class="form-group">
                           <div class="col-xs-12">
                                <br>
                              	<button class="btn btn-lg btn-success" type="submit"><i class="glyphicon glyphicon-ok-sign"></i> Save</button>
                               	<button class="btn btn-lg" type="reset"><i class="glyphicon glyphicon-repeat"></i> Reset</button>
                            </div>
                      </div> -->
              	</form>
              
             
               
             </div><!--/tab-pane-->
            <div class="tab-pane" id="settings"> 
            		
               	
                  <hr>
                  
                  
                  
                  
                  
                  <form class="form" action="##" method="post" id="registrationForm">
                      
                      <div class="form-group">
                          
                          <div class="col-xs-6">
                              <label for="phone"><h4>SSC Mark</h4></label>
                             <b> <input type="text" class="form-control"   readonly value=<c:out value="${b12} "/>  ></b>
                          </div>
                      </div>
          
                      <div class="form-group">
                          <div class="col-xs-6">
                             <label for="mobile"><h4>Address</h4></label>
                               <b><input type="text" class="form-control"   readonly value=<c:out value="${b13} "/>  ></b>
                          </div>
                      </div>
                      <div class="form-group">
                          
                          <div class="col-xs-6">
                              <label for="email"><h4>Nationality</h4></label>
                              <b><input type="email" class="form-control"   readonly value=<c:out value="${b14} "/> ></b>
                          </div>
                      </div>
                      <div class="form-group">
                          
                          <div class="col-xs-6">
                              <label for="email"><h4>District</h4></label>
                              <b><input type="email" class="form-control"   readonly value=<c:out value="${b16} "/>  ></b>
                          </div>
                      </div>
                      <div class="form-group">
                          
                          <div class="col-xs-6">
                              <label for="password"><h4>State</h4></label>
                            <b>  <input type="text" class="form-control"  readonly value=<c:out value="${b15} "/>  ></b>
                          </div>
                      </div>
                      <div class="form-group">
                          
                          <div class="col-xs-6">
                            <label for="password2"><h4>Father Name</h4></label>
                             <b> <input type="text" class="form-control"   readonly value=<c:out value="${b19} "/>  ></b>
                          </div>
                      </div>
                      
                       <div class="form-group">
                          
                          <div class="col-xs-6">
                              <label for="password"><h4>Mother Name</h4></label>
                            <b>  <input type="text" class="form-control"   readonly value=<c:out value="${b20} "/>  ></b>
                          </div>
                      </div>
                      <div class="form-group">
                          
                          <div class="col-xs-6">
                            <label for="password2"><h4>Father Mobile</h4></label>
                             <b> <input type="text" class="form-control"   readonly value=<c:out value="${b21} "/>  ></b>
                          </div>
                      </div>
                      
                      
                      
                      
                      <div class="col-xs-6">
                            <label for="password2"><h4>Friend Name</h4></label>
                              <b><input type="text" class="form-control"  readonly value=<c:out value="${b22} "/>  ></b>
                          </div>
                      </div>
                      
                      </div>
                      
                       
                     
                      
                      
                      
                      
                      
                     <!--  <div class="form-group">
                           <div class="col-xs-12">
                                <br>
                              	<button class="btn btn-lg btn-success pull-right" type="submit"><i class="glyphicon glyphicon-ok-sign"></i> Save</button>
                               	<button class="btn btn-lg" type="reset"><i class="glyphicon glyphicon-repeat"></i> Reset</button>
                            </div>
                      </div> -->
                       
              	</form>
              </div>
               
              </div><!--/tab-pane-->
          </div><!--/tab-content-->

        </div><!--/col-9-->
    </div><!--/row-->
    
                                        
</body>
</html>