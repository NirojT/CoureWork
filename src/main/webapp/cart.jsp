<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="stylesheet" href="style.css">
  <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3pro.css">

<title>Cart Page</title>

</head>

<header>
  <text>CART</text>
  </header>
<body>
 <div class="search-container">
  <a href="index.jsp">Home</a> <br>
  <a href="product.jsp">Products</a>
  <a href="user.jsp"><img class='bag' src="image/user.png" ></a> <br>
  <a href="cart.jsp"><img class='bag' src="image/bag.png" ></a> <br>
  </div>
<body>
<div class="cart-items" id="cartItems">
  <!-- Add your cart items here -->
</div>
<script>
  // Sample cart data
  const cartItems = [
    {
      id: 1,
      name: 'Product 1',
      image: 'https://via.placeholder.com/150',
      price: 100,
      quantity: 1
    },
    // Add more cart items
  ];

  function renderCartItems(items) {
    const cartItemsContainer = document.getElementById('cartItems');
    cartItemsContainer.innerHTML = '';

    items.forEach(item => {
      const cartItem = `
        <div class="cart-item">
          <img src="${item.image}" alt="${item.name}">
          <div>
            <h2>${item.name}</h2>
            <p>Price: $${item.price}</p>
          </div>
          <div>
            <label for="quantity-${item.id}">Quantity:</label>
            <input type="number" id="quantity-${item.id}" name="quantity" min="1" value="${item.quantity}">
          </div>
          <button data-id="${item.id}">Remove from Cart</button>
        </div>
      `;
      cartItemsContainer.innerHTML += cartItem;
    });
  }

  renderCartItems(cartItems);

  // Add your logic for updating cart item quantities and removing items from the cart
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