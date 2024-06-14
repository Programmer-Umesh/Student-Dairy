<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
img{
position: absolute;


}
  h1 {
      position: absolute;
      top: 5%;
      left: 50%;
      transform: translate(-50%, -50%);
       
      text-align: center;
      font-size: 4em;
      color: red;
      /* Additional styling as needed */
    }
     .myDiv {
     position:absolute ;
     top: -8%;
     left: -1%;
      width: 300px;
      height: 670px;
      background-color: #e0e0e0;
      border: 1px solid #ccc;
      padding: 20px;
      margin: 20px;
      background-color: #3498db;
      /* Add more styling as needed */
    }
      nav {
       
      padding: 10px;
    }

    /* Style for the hyperlinks */
    nav a {
    font-size: 25px;
      color: white;
      text-decoration: none;
      padding: 8px 15px;
      margin-right: 10px;
      border-radius: 5px;
      transition: background-color 0.3s ease;
      
    }

    /* Hover effect for hyperlinks */
    nav a:hover {
      background-color: blue;
    }
    #contentFrame {
            width: 100%;
            height: 700px; /* Set the height as per your requirement */
            border: none;
</style>
</head>

<div class ="img">
<img src="https://upload.wikimedia.org/wikipedia/commons/3/3b/Sangola_College%2C_Sangola%2C_Solapur._Original_Image_by_Amar_D._Raut_on_13_September%2C_2020.jpg" alt="image not found..." height=660 width="1510">
<h1>sangola college sangola</h1>
<div class="myDiv">
  <h2>About college</h2>
  <p> </p>
  <nav>
  <a href="http://sangolacollege.org/">Website of SMS</a><br><br><br>
   
  <a href="https://www.sus.ac.in/examination/Online-Result-(Ledger)">Website of University</a><br><br><br>
  <a href="https://www.sus.ac.in/examination/Question-Bank">Question Bank</a><br><br><br>
   <a href="https://www.sus.ac.in/examination/Online-Result-(Ledger)">Online Result</a><br><br><br>
  <a href="https://www.sus.ac.in/examination/Exam-Presentation">Exam-Presentation</a><br><br><br>
  <a href="https://www.sus.ac.in/examination/Time-Table-March-2024">Time-Table</a><br><br><br>
   <a href="https://www.sus.ac.in/examination/Question-Papers"> Question-Papers</a><br><br>
  
  
</div>
</div>
 <body>
  <iframe id="contentFrame" name="contentFrame" src="First.jsp"></iframe>
</body>
</html>