<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>



<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="style.css">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3pro.css">




<title>Registration Form</title>
</head>
<header>
  <text>REGISTRATION</text>
  </header>

 <div class="search-container">
  <a href="index.jsp">Home</a> <br>
  <a href="about.jsp">About Us</a>
  <a href="contact.jsp">Contact Us</a>
 </div>
<body>

<form id="registration-form" action="reg" method="Post" >

  <label for="name">Name:</label>
  <input type="text" id="name" name="name" required>
  
  <label for="email">Email:</label>
  <input type="email" id="email" name="email" required>
  
  <label for="password">Password:</label>
  <input type="password" id="password" name="password" required>
  
  <label for="image">Profile Image:</label>
  <input type="file" id="image" name="image" accept="image/*" required><br><br>
  
  <button type="submit" id="submit-btn">Register</button>
</form>





  <!--javascripts-->
        <script
            src="https://code.jquery.com/jquery-3.4.1.min.js"
            integrity="sha256-CSXorXvZcTkaix6Yvo6HppcZGetbYMGWSFlBw8HfCJo="
        crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
        <script src="js/myjs.js" type="text/javascript"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/2.1.2/sweetalert.min.js"></script>
        <script>
            $(document).ready(function () {
                console.log("loaded........")

                $('#registration-form').on('submit', function (event) {
                    event.preventDefault();



                    let form = new FormData(this);

                    $("#submit-btn").hide();
                    $("#loader").show();
                    //send register servlet:
                    $.ajax({
                        url: "reg",
                        type: 'POST',
                        data: form,
                        success: function (data, textStatus, jqXHR) {
                            console.log(data)

                            $("#submit-btn").show();
                            $("#loader").hide();

                            if (data.trim() === 'done')
                            {

                                swal("Registered successfully..We are going to redirect to login page ")
                                        .then((value) => {
                                            window.location = "login.jsp"
                                        });
                            } else
                            {
                            	swal("Name or Email must be unique")
                                .then((value) => {
                                    window.location = "Register.jsp"
                                });
                               /*  swal(data); */
                            }

                        },
                        error: function (jqXHR, textStatus, errorThrown) {
                            $("#submit-btn").show();
                            $("#loader").hide();
                            swal("something went wrong..try again");

                        },
                        processData: false,
                        contentType: false

                    });



                });


            });



        </script>






















</body>
<footer>
  <p>© VHI Cart 2023</p>

 <div>
      <a href="index.jsp">Home</a> <a> ~</a>
      <a href="about.jsp">About Us</a><a> ~</a>
      <a href="contact.jsp">Contact Us</a>
    </div>
  
  </footer>
</html>






































