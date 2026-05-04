<%@ page contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
<title>Login</title>

<style>
    body {
        margin: 0;
        font-family: Arial, sans-serif;
        background: linear-gradient(to right, #667eea, #764ba2);
        height: 100vh;
        display: flex;
        justify-content: center;
        align-items: center;
    }

    .login-box {
        background: white;
        padding: 30px;
        border-radius: 10px;
        width: 300px;
        box-shadow: 0 10px 25px rgba(0,0,0,0.2);
        text-align: center;
    }

    .login-box h2 {
        margin-bottom: 20px;
    }

    .input-box {
        width: 100%;
        padding: 10px;
        margin: 10px 0;
        border: 1px solid #ccc;
        border-radius: 5px;
    }

    .btn {
        width: 100%;
        padding: 10px;
        background: #667eea;
        color: white;
        border: none;
        border-radius: 5px;
        cursor: pointer;
        font-size: 16px;
    }

    .btn:hover {
        background: #5a67d8;
    }

    .error {
        color: red;
        margin-bottom: 10px;
    }
</style>

</head>

<body>

<div class="login-box">

    <h2>Login</h2>

    <%
    String error = request.getParameter("error");
    if("1".equals(error)) {
    %>
        <div class="error">Invalid Email or Password</div>
    <%
    }
    %>

    <form action="login" method="post">
        <input type="text" name="email" placeholder="Enter Email" class="input-box" required>
        <input type="password" name="password" placeholder="Enter Password" class="input-box" required>
        <input type="submit" value="Login" class="btn">
    </form>

</div>

</body>
</html>