<%-- 
    Document   : index.jsp
    Created on : Nov 22, 2023, 6:25:47 PM
    Author     : SKS
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="e-commerces-style.css"/>
    </head>
    <body>
        <section id="header" style="background: #E3E6F3; width:100%;height:70px;">
            <a href="#"><img src="images/homebackground1.jpg" id="logo"  style ="float: left;width: 50px;height: 50px; padding:10px 20px"alt=""/></a>
            <div>
                <ul id="navbar">
                    <li><a class="active" href="index.jpg">Clothes</a></li>
                    <li><a href="shoes.jpg">Shoes</a></li>
                    <li><a href="cosmetics.jpg">Cosmetics</a></li>
                    <li><a href="Jewelry.jpg">Jewelry</a></li>
                    <li><a href="cart.jpg"><img src="images/shoppingcart1.jpg" id="cart" style="width: 25px;height: 25px;"></a></li>

                    <li><a href="login.jpg"><img src="images/user.jpg" id="cart" style="width: 25px;height: 25px;"></a></li>
                </ul>
            </div>
        </section>
        
        <div id="hero">
                <h4>Trade-in-offer</h4>
                <h2>Super value deals</h2>
                <h1>On all products</h1>
                <p>Save more with coupons & up to 70% off!</p>
                <button>Order Now</button>
            </div>
    </body>
</html>
