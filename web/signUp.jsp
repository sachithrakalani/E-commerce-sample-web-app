<%-- 
    Document   : signUp.jsp
    Created on : Dec 2, 2023, 6:44:47 PM
    Author     : SKS
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Sign-up-Page</title>
        <link rel="stylesheet" href="e-commerces-style.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css" integrity="sha512-Avb2QiuDEEvB4bZJYdft2mNjVShBftLdPG8FJ0V7irTLQ8Uo0qcPxh4Plq7G5tGm0rU+1SPhVotteLpBERwTkw==" crossorigin="anonymous" referrerpolicy="no-referrer" />

    </head>
    <body>
        <section id="header" style="background: #E3E6F3; width:100%;height:70px;">
            <a href="#"><img src="images/home-page/homebackground1.jpg" id="logo"  style ="float: left;width: 50px;height: 50px; padding:10px 20px"alt=""/></a>
            <div>
                <ul id="navbar">
                    <li><a  href="index.jsp">Home</a></li>
                    <li><a href="clothes.jsp">Clothes</a></li>
                    <li><a href="shoes.jsp">Shoes</a></li>
                    <li><a href="cosmetics.jsp">Cosmetics</a></li>
                    <li><a href="Jewelry.jsp">Jewelry</a></li>
                    <!--<li><a href="cart.jsp"><i class="fa fa-shopping-cart" aria-hidden="true"></i></a></li>-->
                    <li><a href="cart.jsp"><i class="fa-solid fa-cart-shopping"></i></i></a></li>
                    <li><a class="active" href="signUp.jsp"><i class="fa fa-user-circle" aria-hidden="true"></i></a></li>
                </ul>
            </div>
        </section>

        <div class="contaniner">
            <center>
                <div class="form-box" style="padding-top:100px;">
                    <div class="wrapper">
                        <h1>Sign Up</h1>
                        <form action="signUp" method="post">
                            <input type="text" placeholder="First Name" name="First_name">
                            <input type="text" placeholder="Last Name" name="Last_name">
                            <input type="text" placeholder="Phone number" name="Phone_number">
                            <input type="email" placeholder="Email" name="Email">
                            <input type="password" placeholder="Password" name="Password">
                            <div class="terms">
                                <!--<input type="checkbox" class="chech-box"><span id="spn01"> I agree to the terms & conditions</span>-->
                                <!--<input type="checkbox" id="checkbox" style="padding-left:10px;">I agree to these I agree to these-->  
                                <!--<lable for="checkbox">I agree to these <a href="#"> I agree to these </a></lable>-->
                            </div>
                            <button type="submit">Sign Up</button>
                            <div class="member">
                                Already member?<a href="signIn.jsp">Login Here</a>
                            </div>
                        </form>
                    </div>
                </div>
            </center>
        </div>

        

        <footer class="section-p1">
            <div class="col">
                <img src="images/home-page/homebackground1.jpg" class="logo"alt="" style ="width: 50px;height: 50px">
                <h4>Contact</h4><br>
                <p><strong>Address:</strong>Hemas,Wawlagala,Baddegama</p>
                <p><strong>Phone:</strong>0776943623/0711417363</p>
                <p><strong>Hours:</strong>10.00 - 18.00,Mon - Sat</p>
                <div class="follow">
                    <h4>Follow us</h4>
                    <div class="icon">
                        <i class="fab fa-facebook -f"></i>
                        <i class="fab fa-twitter"></i>
                        <i class="fab fa-instagram"></i>
                        <i class="fab fa-pinterest-p"></i>
                        <i class="fab fa-youtube"></i>
                    </div>
                </div>
            </div>

            <div class="col">
                <h4>About us</h4>
                <a href="#">About us</a>
                <a href="#">Delivery Information</a>
                <a href="#">Privacy & policy</a>
                <a href="#">Terms & Conditions</a>
                <a href="#">Contact Us</a>
            </div>

            <div class="col">
                <h4>My Account</h4>
                <a href="#">Sign In</a>
                <a href="#">View Cart</a>
                <a href="#">My wishlist</a>
                <a href="#">Track My Order</a>
                <a href="#">Help</a>
            </div>

            <div class="col install">
                <h4>Install App</h4>
                <p>From App Store or Google Play</p>
                <div class="row">
                    <img src="images/footer/fotter3.jpg" style="width: 150px">
                    <img src="images/footer/fotter4.jpg" style="width: 150px">
                </div>
            </div>

            <div class="copyright">
                <p>E Commerces App - 2023</p>
            </div>
        </footer>
    </body>
</html>
