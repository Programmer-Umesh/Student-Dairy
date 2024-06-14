<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
 <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Navigation Page</title>
    <style>
       body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
        }
        nav {
            background-color: maroon;
            color: #fff;
            padding: 30px;
            text-align: right;
        }
        nav a {
            color: #fff;
            text-decoration: none;
            margin: 0 10px;
            display: inline-block;
            position: relative;
            padding-left: 20px; /* Adjust padding as per your image size */
        }
        nav a::before {
            content: "";
            width: 10px; /* Adjust size of the circle */
            height: 10px; /* Adjust size of the circle */
            background-color: red; /* Adjust the color of the circle */
            border-radius: 50%; /* Makes it a circle */
            position: absolute;
            left: 0;
            top: 50%;
            transform: translateY(-50%);
        }
        #contentFrame {
            width: 100%;
            height: 700px; /* Set the height as per your requirement */
            border: none; /* Remove border around iframe */
        }
        
          }
        .container {
            position: relative;
            width: 100%;
            height: 100vh; /* Set the height as needed */
            background-color: blue;
            padding: 20px;
            color: blue;
            border: thin;
        }
        .circle-link {
            position: absolute;
            width: 70px; /* Set the width of the circle image */
            height: 70px; /* Set the height of the circle image */
            top: 7px; /* Set the top position */
            left: 50px; /* Set the left position */
            border-radius: 50%;
            border-color: black; /* Makes it a circle */
             
            
            
            
        }
        hed{
        }
        
    </style>
<body>

  
         
    <nav>
    <a href="First.jsp" target="contentFrame">Home</a>
        <a href="Subject.jsp" target="contentFrame">Time Table</a>
        <a href="Fees.jsp" target="contentFrame">Fees Information</a>
        <a href="Notes.jsp" target="contentFrame">Notes</a>
        <a href="Attendens.jsp" target="contentFrame">Attendance</a>
        
        
        
  
    </nav>  
     
    
     <div class="container">
        <a href="Profile.jsp">
            <img src="https://e7.pngegg.com/pngimages/799/987/png-clipart-computer-icons-avatar-icon-design-avatar-heroes-computer-wallpaper-thumbnail.png" alt=" https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTcX3cu7MWvad2OKHE_dE3aieGx-3cbERqKsQ&usqp=CAU2" class="circle-link"></a>  
        
    </div>
     
</body>
  

     <iframe id="contentFrame" name="contentFrame" src="First.jsp"></iframe> 
  
</body>
</html>