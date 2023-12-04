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
            <div class="form-box">
                <h1 id="title">Sign Up</h1>
                <form>
                    <div class="input-group">
                        <div class="input-field" id="fnameField">
                            <i class="fa fa-user-circle" aria-hidden="true"></i>
                            <input type="text" placeholder="First Name">
                        </div>

                        <div class="input-field" id="lnameField">
                            <i class="fa fa-user-circle" aria-hidden="true"></i>
                            <input type="text" placeholder="Last Name">
                        </div>

                        <div class="input-field" id="pnoField">
                            <i class="fa fa-user-circle" aria-hidden="true"></i>
                            <input type="text" placeholder="Phone number">
                        </div>

                        <div class="input-field">
                            <i class="fa fa-user-circle" aria-hidden="true"></i>
                            <input type="email" placeholder="Email">
                        </div>

                        <div class="input-field">
                            <i class="fa fa-user-circle" aria-hidden="true"></i>
                            <input type="password" placeholder="Password">
                        </div>
                        <p>Lost password <a href="#">Click Here!</a></p>
                    </div>
                    <div class="btn-field">
                        <button type="button" id="signupBtn">Sign up</button>
                        <button type="button" id="signinBtn" class="disable">Sign in</button>
                    </div>

                </form>
            </div>
        </div>
        
        <script>
            let signupBtn = document.getElementById("signupBtn");
            let signinBtn = document.getElementById("signinBtn");
            let fnameField = document.getElementById("fnameField");
            let lnameField = document.getElementById("lnameField");
            let pnoField = document.getElementById("pnoField");
            let title = document.getElementById("title");

            signinBtn.onclick = function(){
                fnameField.style.maxHeight ="0";
                lnameField.style.maxHeight ="0";
                pnoField.style.maxHeight ="0";
                title.innerHTML = "Sign In";
                signupBtn.classList.add("disable");
                signinBtn.classList.remove("disable");
            }
            signupBtn.onclick = function () {
                fnameField.style.maxHeight = "60px";
                lnameField.style.maxHeight = "60px";
                pnoField.style.maxHeight = "60px";
                title.innerHTML = "Sign Up";
                signupBtn.classList.remove("disable");
                signinBtn.classList.add("disable");
            }
        </script>

        
    </body>
</html>
