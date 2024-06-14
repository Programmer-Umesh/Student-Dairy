<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="s"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
 <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #e6edf7;
            margin: 0;
            padding: 0;
            display: flex;
            align-items: center;
            justify-content: center;
            height: 100vh;
        }

        form {
            background-color: #fff;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            width: 300px;
        }

        label {
            display: block;
            margin-bottom: 8px;
        }

        input[type="text"], select {
            width: 100%;
            padding: 8px;
            margin-bottom: 12px;
            box-sizing: border-box;
        }

        input[type="submit"] {
            background-color: #4caf50;
            color: #fff;
            padding: 10px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
        }

        input[type="submit"]:hover {
            background-color: #45a049;
        }
    </style>
</head>
<body>
<form action="Attend.jsp">
         <label for="studentName">Student Name:</label>
        <input type="text" id="studentName" name="Name" required>

        <label for="date">Date:</label>
        <input type="text" id="date" name="date1" placeholder="YYYY-MM-DD" required>

        <label for="attendanceStatus">Attendance Status:</label>
        <select id="attendanceStatus" name="atn" required>
            <option value="present">Present</option>
            <option value="absent">Absent</option>
        </select>
        
        
                            <label for="attendanceStatus">Class</label>
                            <select id="attendanceStatus" required name="class1">
                                <option disabled selected>Select Class</option>
                                <option>BCA-I</option>
                                <option>BCA-II</option>
                                <option>BCA-III</option>
                                <option>BCS-I</option>
                                <option>BCS-II</option>
                                <option>BCS-III</option>
                                <option>BSC-I</option>
                                 <option>BSC-II</option>
                                 <option>BSC-III</option>
                            </select>

        <input type="submit" value="Submit">
    </form>

</body>
</html>