<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<title>Cart</title>

<style>
body {
    font-family: Arial;
    background: #f4f6f9;
}

.container {
    width: 60%;
    margin: auto;
    margin-top: 40px;
}

.card {
    background: white;
    padding: 15px;
    margin-bottom: 10px;
    border-radius: 8px;
    display: flex;
    justify-content: space-between;
    align-items: center;
}

.btn {
    background: red;
    color: white;
    padding: 5px 10px;
    text-decoration: none;
    border-radius: 5px;
}

.total {
    font-size: 20px;
    margin-top: 20px;
}
</style>

</head>

<body>

<div class="container">
<h2>Your Cart</h2>

<%
List<Map<String,Object>> cart =
(List<Map<String,Object>>) session.getAttribute("cart");

double total = 0;

if(cart != null && !cart.isEmpty()) {
    for(Map<String,Object> item : cart) {

        String name = (String) item.get("name");
        double price = (double) item.get("price");
        int qty = (int) item.get("qty");

        double itemTotal = price * qty;
        total += itemTotal;
%>

<div class="card">
    <div>
        <h3><%= name %></h3>
        <p>₹ <%= price %> × <%= qty %> = ₹ <%= itemTotal %></p>
    </div>

    <a href="cart?remove=<%= name %>" class="btn">Remove</a>
</div>

<%
    }
} else {
%>
<p>Your cart is empty</p>
<%
}
%>

<div class="total">
<strong>Total: ₹ <%= total %></strong>
</div>

</div>

</body>
</html>