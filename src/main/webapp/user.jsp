<%@page import="Entity.User"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="stylesheet" href="style.css">
  <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3pro.css">

<title>User Profile</title>

</head>

<header>
  <text>USER PROFILE</text>
  </header>
<body>
<%
User user=(User) session.getAttribute("currentUser"); 

%>
 <div class="search-container">
  <a href="index.jsp">Home</a> <br>
  <a href="product.jsp">Products</a>
  <a href="user.jsp"><img class='bag' src="image/user.png" ></a> <br>
  <a href="cart.jsp"><img class='bag' src="image/bag.png" ></a> <br>
  </div>

 <div class="form"> 
  <div class="profile">
    <p class="h2text">Edit Profile</p>
    
    
    <form id="editProfileForm" action="updateUserServlet?userid=<%=user.getId() %>">
      <label for="userid">Id:</label>
     <input type="number" id="userid" name="userid" >
     
      <label for="name">Name:</label>
      <input type="text" id="name" name="name" required value="<%=user.getName() %>">
      <label for="email">Email:</label>
      <input type="email" id="email" name="email" required value="<%=user.getEmail() %>"  ><br>
      <label for="pass">Password:</label>
      <input type="password" id="pass" name="password" required value="<%=user.getPassword()%>"  ><br>
      <label for="img">Image:</label>
      <input type="text" id="img" name="image" required value="<%=user.getImage()%>"  ><br>

     
      <button  type="submit">Save Changes</button>
    </form><br>
    <br><p class="h2text">Change Password</p>
    <form id="changePasswordForm">
      <label for="currentPassword">Current Password:</label>
      <input type="password" id="currentPassword" name="currentPassword" required>
      <label for="newPassword">New Password:</label>
      <input type="password" id="newPassword" name="newPassword" required><br>
      
      <button type="submit">Change Password</button>
    </form>
  </div>
  </div>
  <div class="orders">
    <p class="h2text">Order History</p>
    <!-- Add your order history list here -->
  </div>

<!-- <script>
  document.getElementById('editProfileForm').addEventListener('submit', function(event) {
    event.preventDefault();
    // Add your logic for updating user profile here
  });

  document.getElementById('changePasswordForm').addEventListener('submit', function(event) {
    event.preventDefault();
    // Add your logic for changing user password here
  });
</script> -->
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