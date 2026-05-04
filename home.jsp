<%@ page contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
<title>Home</title>

<style>
    body {
        margin: 0;
        font-family: Arial, sans-serif;
        background: #f4f6f9;
    }

    /* Navbar */
    .navbar {
        background: #667eea;
        padding: 15px;
        color: white;
        display: flex;
        justify-content: space-between;
        align-items: center;
    }

    .navbar h2 {
        margin: 0;
    }

    .logout {
        background: white;
        color: #667eea;
        padding: 8px 15px;
        border-radius: 5px;
        text-decoration: none;
        font-weight: bold;
    }

    /* Container */
    .container {
        padding: 30px;
        text-align: center;
    }

    /* Cards */
    .card-container {
        display: flex;
        justify-content: center;
        gap: 20px;
        flex-wrap: wrap;
        margin-top: 30px;
    }

    .card {
        background: white;
        padding: 20px;
        width: 200px;
        border-radius: 10px;
        box-shadow: 0 5px 15px rgba(0,0,0,0.1);
        transition: 0.3s;
    }

    .card:hover {
        transform: translateY(-5px);
    }

    .card h3 {
        margin-bottom: 10px;
    }

    .btn {
        display: inline-block;
        margin-top: 10px;
        padding: 8px 15px;
        background: #667eea;
        color: white;
        text-decoration: none;
        border-radius: 5px;
    }
</style>

</head>

<body>

<!-- Navbar -->
<div class="navbar">
    <h2>E-Commerce</h2>
    <a href="login.jsp" class="logout">Logout</a>
</div>

<!-- Content -->
<div class="container">
    <h1>Welcome, User 🎉</h1>
    <p>Explore your dashboard</p>

    <div class="card-container">

        <div class="card">
            <h3>Products</h3>
            <p>View all items</p>
            <a href="products" class="btn">View</a>
        </div>

        <div class="card">
            <h3>Cart</h3>
            <p>Your selected items</p>
            <a href="#" class="btn">Open</a>
        </div>

        <div class="card">
            <h3>Orders</h3>
            <p>Track your orders</p>
            <a href="#" class="btn">Check</a>
        </div>

    </div>
</div>

</body>
</html>