<%@page import="Entity.User"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
   
 <%
User user=(User) session.getAttribute("currentUser");
 if (user == null) {
     response.sendRedirect("login.jsp");
 }

 
 %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>


<link rel="stylesheet" href="style.css">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3pro.css">
</head>
<body>

 
 
 <div class="search-container">
  <a href="#">Home</a> <br>
  <a href="product.jsp">Products</a><br>
   <input type="text" id="search" placeholder="Search...">
    <select id="searchFilter">
      <option value="category">Category</option>
      <option value="highestPrice">Highest Price</option>
      <option value="highestRating">Highest Rating</option>
      <option value="brand">Brand</option>
    </select>
    <button class='b1'id="searchBtn">Search</button> <br>
    
    <a href="cart.jsp"><img class='bag' src="image/bag.png" ></a> <br>
    
    
    
    <a href="user.jsp"> <img class='bag' src="image/user.png"> <%=user.getName() %></a> <br>
    <a  href="LogoutServlet"><img class='bag' src="image/user.png">Logout</a> <br>
  </div>

  <img src="image/pb.jpeg" >
  <div class="trendtxt"> 
  <text>Trending This Week</text>
  </div>
  
<div class="products" id="products">
  <!-- Add your product cards here -->
</div>
<script >
  // Sample product 
  const products = [
    {
      id: 1,
      name: 'Product 1',
      image: 'https://via.placeholder.com/150',
      price: 100,
      category: 'Category 1',
      rating: 4.5,
      brand: 'Brand 1'
    },
    
    {
      id: 1,
      name: 'Product 1',
      image: 'https://via.placeholder.com/150',
      price: 100,
      category: 'Category 1',
      rating: 4.5,
      brand: 'Brand 1'
    },
    {
      id: 1,
      name: 'Product 1',
      image: 'https://via.placeholder.com/150',
      price: 100,
      category: 'Category 1',
      rating: 4.5,
      brand: 'Brand 1'
    },
  ];

  function renderProducts(products) {
    const productsContainer = document.getElementById('products');
    productsContainer.innerHTML = '';

    products.forEach(product => {
      const productCard = `
        <div class="product">
          <img src="${product.image}" alt="${product.name}">
          <p class='producttxt'>${product.name}<p>
          <p class='pricetxt'>Price: $${product.price}</p>
          <button>Add to Cart</button>
        </div>
      `;
      productsContainer.innerHTML += productCard;
    });
  }

  document.getElementById('searchBtn').addEventListener('click', function() {
    const searchTerm = document.getElementById('search').value.toLowerCase();
    const searchFilter = document.getElementById('searchFilter').value;
    let filteredProducts = products;

    if (searchFilter === 'category') {
      filteredProducts = products.filter(product => product.category.toLowerCase().includes(searchTerm));
    } else if (searchFilter === 'highestPrice') {
      filteredProducts = products.filter(product => product.price >= parseFloat(searchTerm));
    } else if (searchFilter === 'highestRating') {
      filteredProducts = products.filter(product => product.rating >= parseFloat(searchTerm));
    } else if (searchFilter === 'brand') {
      filteredProducts = products.filter(product => product.brand.toLowerCase().includes(searchTerm));
    }

    renderProducts(filteredProducts);
  });

  renderProducts(products);
</script>
<div class="trendtxt"> 
  <text>Featured</text>
  </div>
<img class='pimg'src="image/pbb.jpg" >




<footer>
  <p>© VHI Cart 2023</p>

 <div>
      <a href="index.jsp">Home</a> <a> ~</a>
      <a href="about.jsp">About Us</a><a> ~</a>
      <a href="contact.jsp">Contact Us</a>
    </div>
  
  </footer>


















</body>
</html>