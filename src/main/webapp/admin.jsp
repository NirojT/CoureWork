<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="style.css">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3pro.css">

<title>Admin</title>
</head>
<header>
  <text>ADMIN</text>
  </header>

 <div class="nav">
  <a href="index.jsp">Website</a> <br>
  
  <button class="b1" id="logoutBtn">Logout</button>
 </div>
  

<div class="container">

  <p class="h2text">Add Product</p>

  <form id="addProductForm">
    <label for="productName">Product Name:</label>
    <input type="text" id="productName" name="productName" required>
    <label for="productImage">Product Image URL:</label>
    <input type="url" id="productImage" name="productImage" required>
    <label for="productPrice">Product Price:</label>
    <input type="number" id="productPrice" name="productPrice" required>
    <label for="productStock">Product Stock:</label>
    <input type="number" id="productStock" name="productStock" required><br>
    <button type="submit">Add Product</button>
  </form>

  <p class="h2text">Product List</p>
  <table id="productTable">
    <thead>
      <tr>
        <th>Name</th>
        <th>Image</th>
        <th>Price</th>
        <th>Stock</th>
        <th>Actions</th>
      </tr>
    </thead>
    <tbody>
      <!-- Add your product rows here -->
    </tbody>
  </table>
  <p class="h2text">Order List</p>

  <table id="orderTable">
    <thead>
      <tr>
        <th>Client</th>
        <th>Product</th>
        <th>Quantity</th>
        <th>Status</th>
      </tr>
    </thead>
    <tbody>
      <!-- Add your order rows here -->
    </tbody>
  </table>
</div>
<script>
  document.getElementById('addProductForm').addEventListener('submit', function(event) {
    event.preventDefault();
    // Add your logic for adding a new product here
  });

  document.getElementById('logoutBtn').addEventListener('click', function() {
    // Add your logic for logging out and expiring user sessions here
  });

  // Add your logic for editing and deleting products, and displaying order list
</script>
</body>
<footer>
  <p>© VHI Cart 2023</p>
  <div class="col-md-6">
    <div class="list-inline">
      <a href="index.jsp">Home</a> <a> ~</a>
    <a href="about.jsp">About Us</a><a> ~</a>
    <a href="contact.jsp">Contact Us</a>
    </div>
    
  
  </div>
  </footer>
</html>