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
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.15.4/css/all.css"/>
    </head>
    <body>
        <section id="header" style="background: #E3E6F3; width:100%;height:70px;">
            <a href="#"><img src="images/homebackground1.jpg" id="logo"  style ="float: left;width: 50px;height: 50px; padding:10px 20px"alt=""/></a>
            <div>
                <ul id="navbar">
                    <li><a class="active" href="index.jpg">Home</a></li>
                    <li><a href="index.jsp">Clothes</a></li>
                    <li><a href="shoes.jsp">Shoes</a></li>
                    <li><a href="cosmetics.jsp">Cosmetics</a></li>
                    <li><a href="Jewelry.jsp">Jewelry</a></li>
                    <li><a href="cart.jsp"><i class="fa fa-shopping-cart" aria-hidden="true"></i></a></li>
                    <li><a href="login.jsp"><i class="fa fa-user-circle" aria-hidden="true"></i></a></li>
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
        <section id="featur" style="padding:40px 80px;">
            <div class="fe-box">
                <img src="images/freesh.1jpg.jpg" alt="" style="height:150px; width:100px;" >
                <h6>Free Shipping</h6>
            </div>
            <div class="fe-box">
                <img src="images/onlinesh1.jpg" alt="" style="height:150px; width:150px;" >
                <h6>Online Order</h6>
            </div>
            <div class="fe-box">
                <img src="images/card1.jpg" alt="" style="height:150px; width:150px;" >
                <h6>Card Payment</h6>
            </div>
            <div class="fe-box">
                <img src="images/gift.1jpg.jpg" alt="" style="height:150px; width:150px;" >
                <h6>Gift Vouchers</h6>
            </div>
            <div class="fe-box">
                <img src="images/new1.jpg" alt="" style="height:150px; width:100px;" >
                <h6>New Arrivals</h6>
            </div>
        </section>
        
        <section id="product1" class="section-p1"style="padding:40px 80px">
            <h2>Featured Products</h2>
            <p>Summer Collection New Morden Design</p>
            <div class="pro-container">
                <div class="pro">
                    <img src="images/home-fe-box1.jpg" alt=""id="img" style=" width: 150px; height: 175px;">
                    <div class="des">
                        <span>adidas</span>
                        <h5>Party Frock</h5>
                        <div class="star">
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                        </div>
                        <h4>LKR 5,000.00</h4>
                    </div
                    <a href="#"><i class="fa fa-shopping-cart cart"></i></a>
                </div>
                <div class="pro">
                    <img src="images/home-fe-box2.jpg.jpg" alt=""id="img" style=" width: 150px; height: 175px;">
                    <div class="des">
                        <span>adidas</span>
                        <h5>Party Frock</h5>
                        <div class="star">
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                        </div>
                        <h4>LKR 5,000.00</h4>
                    </div
                    <a href="#"><i class="fa fa-shopping-cart cart"></i></a>
                </div>
                <div class="pro">
                    <img src="images/home-fe-box1.jpg" alt=""id="img" style=" width: 150px; height: 175px;">
                    <div class="des">
                        <span>adidas</span>
                        <h5>Party Frock</h5>
                        <div class="star">
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                        </div>
                        <h4>LKR 5,000.00</h4>
                    </div
                    <a href="#"><i class="fa fa-shopping-cart cart"></i></a>
                </div>
                <div class="pro">
                    <img src="images/home-fe-box2.jpg" alt=""id="img" style=" width: 150px; height: 175px;">
                    <div class="des">
                        <span>adidas</span>
                        <h5>Party Frock</h5>
                        <div class="star">
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                        </div>
                        <h4>LKR 5,000.00</h4>
                    </div
                    <a href="#"><i class="fa fa-shopping-cart cart"></i></a>
                </div>
                <div class="pro">
                    <img src="images/home-fe-box1.jpg" alt=""id="img" style=" width: 150px; height: 175px;">
                    <div class="des">
                        <span>adidas</span>
                        <h5>Party Frock</h5>
                        <div class="star">
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                        </div>
                        <h4>LKR 5,000.00</h4>
                    </div
                    <a href="#"><i class="fa fa-shopping-cart cart"></i></a>
                </div>
                <div class="pro">
                    <img src="images/home-fe-box2.jpg" alt=""id="img" style=" width: 150px; height: 175px;">
                    <div class="des">
                        <span>adidas</span>
                        <h5>Party Frock</h5>
                        <div class="star">
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                        </div>
                        <h4>LKR 5,000.00</h4>
                    </div
                    <a href="#"><i class="fa fa-shopping-cart cart"></i></a>
                </div>
                <div class="pro">
                    <img src="images/home-fe-box4.jpg" alt=""id="img" style=" width: 150px; height: 175px;">
                    <div class="des">
                        <span>adidas</span>
                        <h5>Party Frock</h5>
                        <div class="star">
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                        </div>
                        <h4>LKR 5,000.00</h4>
                    </div
                    <a href="#"><i class="fa fa-shopping-cart cart"></i></a>
                </div>
                <div class="pro">
                    <img src="images/home-fe-box1.jpg" alt=""id="img" style=" width: 150px; height: 175px;">
                    <div class="des">
                        <span>adidas</span>
                        <h5>Party Frock</h5>
                        <div class="star">
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                        </div>
                        <h4>LKR 5,000.00</h4>
                    </div
                    <a href="#"><i class="fa fa-shopping-cart cart"></i></a>
                </div>
                <div class="pro">
                    <img src="images/home-fe-box3.jpg" alt=""id="img" style=" width: 150px; height: 175px;">
                    <div class="des">
                        <span>adidas</span>
                        <h5>Party Frock</h5>
                        <div class="star">
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                        </div>
                        <h4>LKR 5,000.00</h4>
                    </div
                    <a href="#"><i class="fa fa-shopping-cart cart"></i></a>
                </div>
                <div class="pro">
                    <img src="images/home-fe-box1.jpg" alt=""id="img" style=" width: 150px; height: 175px;">
                    <div class="des">
                        <span>adidas</span>
                        <h5>Party Frock</h5>
                        <div class="star">
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                        </div>
                        <h4>LKR 5,000.00</h4>
                    </div
                    <a href="#"><i class="fa fa-shopping-cart cart"></i></a>
                </div>
                <div class="pro">
                    <img src="images/home-fe-box1.jpg" alt=""id="img" style=" width: 150px; height: 175px;">
                    <div class="des">
                        <span>adidas</span>
                        <h5>Party Frock</h5>
                        <div class="star">
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                        </div>
                        <h4>LKR 5,000.00</h4>
                    </div
                    <a href="#"><i class="fa fa-shopping-cart cart"></i></a>
                </div>
                <div class="pro">
                    <img src="images/home-fe-box1.jpg" alt=""id="img" style=" width: 150px; height: 175px;">
                    <div class="des">
                        <span>adidas</span>
                        <h5>Party Frock</h5>
                        <div class="star">
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                        </div>
                        <h4>LKR 5,000.00</h4>
                    </div
                    <a href="#"><i class="fa fa-shopping-cart cart"></i></a>
                </div>
                <div class="pro">
                    <img src="images/home-fe-box1.jpg" alt=""id="img" style=" width: 150px; height: 175px;">
                    <div class="des">
                        <span>adidas</span>
                        <h5>Party Frock</h5>
                        <div class="star">
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                        </div>
                        <h4>LKR 5,000.00</h4>
                    </div
                    <a href="#"><i class="fa fa-shopping-cart cart"></i></a>
                </div>
                <div class="pro">
                    <img src="images/home-fe-box1.jpg" alt=""id="img" style=" width: 150px; height: 175px;">
                    <div class="des">
                        <span>adidas</span>
                        <h5>Party Frock</h5>
                        <div class="star">
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                        </div>
                        <h4>LKR 5,000.00</h4>
                    </div
                    <a href="#"><i class="fa fa-shopping-cart cart"></i></a>
                </div>
                <div class="pro">
                    <img src="images/home-fe-box1.jpg" alt=""id="img" style=" width: 150px; height: 175px;">
                    <div class="des">
                        <span>adidas</span>
                        <h5>Party Frock</h5>
                        <div class="star">
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                        </div>
                        <h4>LKR 5,000.00</h4>
                    </div
                    <a href="#"><i class="fa fa-shopping-cart cart"></i></a>
                </div>
                <div class="pro">
                    <img src="images/home-fe-box1.jpg" alt=""id="img" style=" width: 150px; height: 175px;">
                    <div class="des">
                        <span>adidas</span>
                        <h5>Party Frock</h5>
                        <div class="star">
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                        </div>
                        <h4>LKR 5,000.00</h4>
                    </div
                    <a href="#"><i class="fa fa-shopping-cart cart"></i></a>
                </div>
                <div class="pro">
                    <img src="images/home-fe-box1.jpg" alt=""id="img" style=" width: 150px; height: 175px;">
                    <div class="des">
                        <span>adidas</span>
                        <h5>Party Frock</h5>
                        <div class="star">
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                        </div>
                        <h4>LKR 5,000.00</h4>
                    </div
                    <a href="#"><i class="fa fa-shopping-cart cart"></i></a>
                </div>
                <div class="pro">
                    <img src="images/home-fe-box1.jpg" alt=""id="img" style=" width: 150px; height: 175px;">
                    <div class="des">
                        <span>adidas</span>
                        <h5>Party Frock</h5>
                        <div class="star">
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                        </div>
                        <h4>LKR 5,000.00</h4>
                    </div
                    <a href="#"><i class="fa fa-shopping-cart cart"></i></a>
                </div>
                <div class="pro">
                    <img src="images/home-fe-box1.jpg" alt=""id="img" style=" width: 150px; height: 175px;">
                    <div class="des">
                        <span>adidas</span>
                        <h5>Party Frock</h5>
                        <div class="star">
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                        </div>
                        <h4>LKR 5,000.00</h4>
                    </div
                    <a href="#"><i class="fa fa-shopping-cart cart"></i></a>
                </div>
                <div class="pro">
                    <img src="images/home-fe-box1.jpg" alt=""id="img" style=" width: 150px; height: 175px;">
                    <div class="des">
                        <span>adidas</span>
                        <h5>Party Frock</h5>
                        <div class="star">
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                        </div>
                        <h4>LKR 5,000.00</h4>
                    </div
                    <a href="#"><i class="fa fa-shopping-cart cart"></i></a>
                </div>
            </section>
    </body>
</html>
