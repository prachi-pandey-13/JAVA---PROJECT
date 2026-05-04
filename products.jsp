<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<title>Products</title>

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
}

.navbar a {
    color: white;
    text-decoration: none;
    margin-left: 15px;
}

/* Container */
.container {
    padding: 20px;
}

/* Grid */
.grid {
    display: grid;
    grid-template-columns: repeat(auto-fit, minmax(220px, 1fr));
    gap: 20px;
}

/* Card */
.card {
    background: white;
    border-radius: 10px;
    padding: 15px;
    box-shadow: 0 5px 12px rgba(0,0,0,0.1);
    text-align: center;
    transition: 0.3s;
}

.card:hover {
    transform: translateY(-5px);
}

/* Image */
.card img {
    width: 100%;
    height: 150px;
    object-fit: contain;
}

/* Button */
.btn {
    margin-top: 10px;
    padding: 8px 15px;
    background: #667eea;
    color: white;
    border: none;
    border-radius: 5px;
    cursor: pointer;
}
</style>

</head>

<body>

<!-- Navbar -->
<div class="navbar">
    <h2>E-Commerce</h2>
    <div>
        <a href="home.jsp">Home</a>
        <a href="cart.jsp">Cart</a>
    </div>
</div>

<div class="container">
<h2>Our Products</h2>

<div class="grid">

<%
List<Map<String,String>> products =
(List<Map<String,String>>) request.getAttribute("products");

if(products != null) {
for(Map<String,String> p : products) {
%>

<div class="card">
    <img src="https://via.placeholder.com/150" alt="product">
    <h3><%= p.get("name") %></h3>
    <p>₹ <%= p.get("price") %></p>

    <!-- ✅ Add to Cart Form -->
    <form action="cart" method="post">
        <input type="hidden" name="name" value="<%= p.get("name") %>">
        <input type="hidden" name="price" value="<%= p.get("price") %>">
        <input type="submit" value="Add to Cart" class="btn">
    </form>

</div>

<%
}
}
%>

</div>
</div>

</body>
</html>