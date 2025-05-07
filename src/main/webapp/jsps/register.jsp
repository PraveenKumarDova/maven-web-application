<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Register - praveentechnologies</title>
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background: linear-gradient(to right, #f0f4f8, #d9e4f5);
            margin: 0;
            padding: 0;
        }

        header {
            background-color: #004080;
            color: white;
            padding: 20px;
            text-align: center;
        }

        .register-form {
            background-color: white;
            width: 400px;
            margin: 50px auto;
            padding: 30px;
            border-radius: 12px;
            box-shadow: 0 4px 12px rgba(0, 0, 0, 0.1);
        }

        .register-form h2 {
            text-align: center;
            color: #004080;
        }

        .register-form input[type="text"],
        .register-form input[type="email"],
        .register-form input[type="password"] {
            width: 100%;
            padding: 10px;
            margin: 10px 0 20px;
            border: 1px solid #ccc;
            border-radius: 6px;
        }

        .register-form input[type="submit"] {
            background-color: #004080;
            color: white;
            border: none;
            padding: 12px;
            width: 100%;
            border-radius: 6px;
            cursor: pointer;
            font-size: 16px;
        }

        .register-form input[type="submit"]:hover {
            background-color: #003366;
        }

        .back-link {
            text-align: center;
            margin-top: 15px;
        }

        .back-link a {
            text-decoration: none;
            color: #004080;
        }
    </style>
</head>
<body>

<header>
    <h1>Register at praveentechnologies</h1>
</header>

<div class="register-form">
    <h2>Create Your Account</h2>
    <form action="registerUser.jsp" method="post">
        <label>Full Name:</label>
        <input type="text" name="fullName" required>

        <label>Email Address:</label>
        <input type="email" name="email" required>

        <label>Username:</label>
        <input type="text" name="username" required>

        <label>Password:</label>
        <input type="password" name="password" required>

        <input type="submit" value="Register">
    </form>
    <div class="back-link">
        <a href="index.jsp">← Back to Home</a>
    </div>
</div>

</body>
</html>
