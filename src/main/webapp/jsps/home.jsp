<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.net.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>praveentechnologies Home Page</title>
<link rel="icon" href="images/praveen.jpg">

<style>
    body {
        font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        background: linear-gradient(to right, #f0f4f8, #d9e4f5);
        margin: 0;
        padding: 0;
        color: #333;
    }
    header {
        text-align: center;
        background-color: #004080;
        color: white;
        padding: 20px 10px;
        box-shadow: 0 4px 8px rgba(0,0,0,0.1);
    }
    h1, h3 {
        margin: 10px 0;
    }
    .info-box {
        background-color: #ffffff;
        margin: 20px auto;
        padding: 20px;
        width: 80%;
        border-radius: 10px;
        box-shadow: 0 4px 12px rgba(0,0,0,0.1);
    }
    .info-box h3 {
        color: #0066cc;
    }
    .contact {
        text-align: center;
        background-color: #e8f0fe;
        padding: 20px;
        margin-top: 20px;
        border-top: 2px solid #004080;
    }
    .contact img {
        border-radius: 50%;
        margin-bottom: 10px;
    }
    .contact span {
        display: block;
        margin-top: 10px;
        font-size: 16px;
    }
    footer {
        text-align: center;
        padding: 15px;
        background-color: #004080;
        color: white;
    }
    a {
        color: #004080;
        text-decoration: none;
    }
    a:hover {
        text-decoration: underline;
    }
</style>
</head>
<body>

<header>
    <h1>Welcome to Praveen Kumar Dova</h1>
    <h2>DevOps Engineer, London, England</h2>
    <h3>praveentechnologies.co.in</h3>
</header>

<div class="info-box">
    <h3>Server Side IP Address</h3>
    <p>
    <%
        InetAddress inetAddress = InetAddress.getLocalHost();
        String ip = inetAddress.getHostAddress();
        out.println("Server Host Name: " + inetAddress.getHostName() + "<br>");
        out.println("Server IP Address: " + ip);
    %>
    </p>
</div>

<div class="info-box">
    <h3>Client Side IP Address</h3>
    <p>
    <% 
        out.println("Client IP Address: " + request.getRemoteAddr() + "<br>");
        out.println("Client Host Name: " + request.getRemoteHost()); 
    %>
    </p>
</div>

<div class="contact">
    <img src="images/praveen.jpg" alt="Praveen Logo" width="100">
    <span><strong>praveentechnologies</strong><br>
    Rain Tree Park, Malaysian Township, Hyderabad<br>
    +91-9490000198<br>
    <a href="mailto:praveenkumardova@gmail.com">praveenkumardova@gmail.com</a></span>
</div>

<div class="info-box">
    <h3>Service:</h3>
    <p><a href="services/employee/getEmployeeDetails">Get Employee Details</a></p>
</div>

<footer>
    <p>praveentechnologies.co.in, Development Center.</p>
    <p><small>Copyright 2025 by <a href="https://google.com/">praveentechnologies.co.in</a></small></p>
</footer>

</body>
</html>
