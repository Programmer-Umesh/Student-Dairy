<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

	<link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.11.2/css/all.min.css">
	<link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.11.2/css/fontawesome.min.css">
	<link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.4.1/css/bootstrap.css">
	<link href="https://fonts.googleapis.com/css?family=Poppins:400,500,700&display=swap" rel="stylesheet">


<style>

p,a,h1,h2,h3,h4,h5,h6,ul,li {
	margin: 0;
	padding: 0;
}

.section-services {
	font-family: "Poppins", sans-serif;
	background-color: #e6edf7;
	color: #202020;
	padding-top: 115px;
    padding-bottom: 120px;
}

.section-services .header-section {
	margin-bottom: 34px;
}

.section-services .header-section .title {
	position: relative;
    padding-bottom: 14px;
    margin-bottom: 25px;
	font-weight: 700;
    font-size: 32px;
}

.section-services .header-section .title:before {
	content: "";
	position: absolute;
	bottom: 0;
	left: 50%;
	transform: translateX(-50%);
	width: 50px;
	height: 3px;
	background-color: #ff4500;
    border-radius: 3px;
}

.section-services .header-section .title:after {
	content: "";
	position: absolute;
	bottom: 0;
	left: 50%;
    transform: translateX(30px);
	width: 10px;
	height: 3px;
	background-color: #504f93;
    border-radius: 3px;
}

.section-services .header-section .description {
	font-size: 14px;
    color: #282828;
}

.section-services .single-service {
    position: relative;
    margin-top: 30px;
    background-color: #fff;
    border-radius: 10px;
    padding: 40px 30px;
    overflow: hidden;
}

.section-services .single-service .content {
	position: relative;
	z-index: 20;
}

.section-services .single-service .circle-before {
    position: absolute;
    top: 0;
    right: 0px;
    transform: translate(40%, -40%);
    width: 150px;
    height: 150px;
    background-color: #ff4500;
    border: 6px solid #504f93;
    border-radius: 50%;
    opacity: 0.5;
    z-index: 10;
    transition: all .6s;
}

.section-services .single-service:hover .circle-before {
	width: 100%;
	height: 100%;
	transform: none;
	border: 0;
	border-radius: 0;
	opacity: 1;
}

.section-services .single-service .icon {
	display: inline-block;
	margin-bottom: 26px;
    width: 70px;
    height: 70px;
    background-color: #ff4500;
    border-radius: 5px;
    line-height: 70px;
    text-align: center;
    color: #fff;
    font-size: 30px;
    transition: all .3s;
}

.section-services .single-service:hover .icon {
	background-color: #fff;
	color: #ff4500;
}

.section-services .single-service .title {
    margin-bottom: 18px;
	font-weight: 700;
    font-size: 23px;
    transition: color .3s;
}

.section-services .single-service:hover .title {
	color: #fff;
}

.section-services .single-service .description {
    margin-bottom: 20px;
    font-size: 14px;
    transition: color .3s;
}

.section-services .single-service:hover .description {
	color: #fff;
}

.section-services .single-service a {
	position: relative;
	font-size: 18px;
    color: #202020;
    text-decoration: none;
    font-weight: 500;
    transition: color .3s;
}

.section-services .single-service:hover a {
	color: #fff;
}

.section-services .single-service a:after {
	content: "";
	position: absolute;
	bottom: 0;
	left: 0;
	right: 0;
	height: 1px;
	background-color: #ff4500;
	transition: background-color .3s;
}

.section-services .single-service:hover a:after {
	background-color: #fff;
}
</style>
</head>
<body>
<!-- START SECTION SERVICES -->
	<section class="section-services">
		<div class="container">
			<div class="row justify-content-center text-center">
				<div class="col-md-10 col-lg-8">
					<div class="header-section">
						<h2 class="title">Important Notes</h2>
						<p class="description">The term "languages of computer" typically refers to programming languages, which are formal languages used to give instructions to computers. These instructions, or programs, can range from simple tasks to complex operations. Programming languages allow developers to communicate with computers and create software applications, websites, games, and more.</p>
					</div>
				</div>
			</div>
			<div class="row">
				<!-- Single Service -->
				<div class="col-md-6 col-lg-4">
					<div class="single-service">
						<div class="content">
							<span class="icon">
								<i class="fab fa-battle-net"></i>
							</span>
							<h3 class="title">Java Language</h3>
							<p class="description">Java is a widely used, high-level, object-oriented programming language originally developed by Sun Microsystems (now owned by Oracle Corporation). It was released in 1995 and has since become one of the most popular programming languages in the world. Here are some key aspects of Java:</p>
							<a href="https://www.javatpoint.com/java-tutorial" class="learn-more">Learn More</a>
						</div>
						<span class="circle-before"></span>
					</div>
				</div>
				<!-- / End Single Service -->
				<!-- Single Service -->
				<div class="col-md-6 col-lg-4">
					<div class="single-service">
						<div class="content">
							<span class="icon">
								<i class="fab fa-asymmetrik"></i>
							</span>
							<h3 class="title">Data Structure</h3>
							<p class="description">A data structure is a way of organizing and storing data in a computer so that it can be accessed and used efficiently. It defines a set of rules or operations that can be performed on the data, such as insertion, deletion, searching, and sorting. Data structures are fundamental concepts in computer science and are essential for solving complex problems and designing efficient algorithms.</p>
							<a href="https://www.javatpoint.com/java-tutorial" class="learn-more">Learn More</a>
						</div>
						<span class="circle-before"></span>
					</div>
				</div>
				<!-- / End Single Service -->
				<!-- Single Service -->
				<div class="col-md-6 col-lg-4">
					<div class="single-service">
						<div class="content">
							<span class="icon">
								<i class="fab fa-artstation"></i>
							</span>
							<h3 class="title">Cpp</h3>
							<p class="description">C++ is a high-level programming language developed by Bjarne Stroustrup at Bell Labs in the early 1980s. It is an extension of the C programming language with additional features such as object-oriented programming (OOP), generic programming, and standard libraries. Here are some key aspects of C++:</p>
							<a href="https://www.javatpoint.com/cpp-tutorial" class="learn-more">Learn More</a>
						</div>
						<span class="circle-before"></span>
					</div>
				</div>
				<!-- / End Single Service -->
				<!-- Single Service -->
				<div class="col-md-6 col-lg-4">
					<div class="single-service">
						<div class="content">
							<span class="icon">
								<i class="fab fa-500px"></i>
							</span>
							<h3 class="title">SQL</h3>
							<p class="description"> SQL (Structured Query Language) is a domain-specific language used for managing and manipulating relational databases. It provides a standardized way to interact with databases, allowing users to perform various operations such as querying, inserting, updating, and deleting data. Here are some key aspects of SQL:</p>
							<a href="https://www.javatpoint.com/cpp-tutorial" class="learn-more">Learn More</a>
						</div>
						<span class="circle-before"></span>
					</div>
				</div>
				<!-- / End Single Service -->
				<!-- Single Service -->
				<div class="col-md-6 col-lg-4">
					<div class="single-service">
						<div class="content">
							<span class="icon">
								<i class="fas fa-chart-pie"></i>
							</span>
							<h3 class="title">Python</h3>
						<p class="description"> Python is a high-level, interpreted programming language known for its simplicity and readability. It was created by Guido van Rossum and first released in 1991. Python emphasizes code readability and productivity, making it popular among beginners and experienced programmers alike. Here are some key aspects of Python:</p>
							<a href="https://www.javatpoint.com/python-tutorial" class="learn-more">Learn More</a>
						</div>
						<span class="circle-before"></span>
					</div>
				</div>
				<!-- / End Single Service -->
				<!-- Single Service -->
				<div class="col-md-6 col-lg-4">
					<div class="single-service">
						<div class="content">
							<span class="icon">
								<i class="fas fa-laptop-code"></i>
							</span>
							<h3 class="title">Networking</h3>
							<p class="description"> It seems like you may have meant "Networking" instead of "Neworkong." Networking refers to the practice of connecting multiple computers or devices together to share resources and communicate with each other. Here's some information about networking:</p>
							<a href="https://javatpoint.com/computer-network-tutorial" class="learn-more">Learn More</a>
						</div>
						<span class="circle-before"></span>
					</div>
				</div>
				<!-- / End Single Service -->
			</div>
		</div>
	</section>
	<!-- / END SECTION SERVICES -->

</body>

</body>
</html>