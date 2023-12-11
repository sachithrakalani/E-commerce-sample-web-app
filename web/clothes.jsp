<%-- 
    Document   : clothes.jsp
    Created on : Dec 2, 2023, 10:55:17 AM
    Author     : SKS
--%>

<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.sql.*"%>
<%@page import="java.sql.Statement"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Clothes Page</title>
    <link rel="stylesheet" href="e-commerces-style.css"/>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css" integrity="sha512-Avb2QiuDEEvB4bZJYdft2mNjVShBftLdPG8FJ0V7irTLQ8Uo0qcPxh4Plq7G5tGm0rU+1SPhVotteLpBERwTkw==" crossorigin="anonymous" referrerpolicy="no-referrer" />
</head>
<body>
    <section id="header" style="background: #E3E6F3; width:100%;height:70px;">
        <a href="#"><img src="images/home-page/homebackground1.jpg" id="logo"  style ="float: left;width: 50px;height: 50px; padding:10px 20px"alt=""/></a>
        <div>
            <ul id="navbar">
                <li><a  href="index.jsp">Home</a></li>
                <li><a class="active">Clothes</a></li>
                <li><a href="shoes.jsp">Shoes</a></li>
                <li><a href="cosmetics.jsp">Cosmetics</a></li>
                <li><a href="Jewelry.jsp">Jewelry</a></li>
                <!--<li><a href="cart.jsp"><i class="fa fa-shopping-cart" aria-hidden="true"></i></a></li>-->
                <li><a href="cart.jsp"><i class="fa-solid fa-cart-shopping"></i></i></a></li>
                <li><a href="signUp.jsp"><i class="fa fa-user-circle" aria-hidden="true"></i></a></li>
            </ul>
        </div>
    </section>

    <div id="page-header">
        <h2>#stayhome</h2>
        <p>Save more with coupons & up to 70% off!</p>
    </div>
    <div class="items-view" style='padding:40px 80px;'>
        <%
            try {
                Class.forName("com.mysql.jdbc.Driver");
                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/e_commerces", "root", "");
                Statement st = con.createStatement();
                String str = "select  Iteam_name, Iteam_prices, image_path,Iteam_id from iteam_details order by Iteam_id;";
                ResultSet rs = st.executeQuery(str);
                while (rs.next()) {
                    String itemName = rs.getString("Iteam_name");
                    int itemPrice = rs.getInt("Iteam_prices");
                    String imagePath = rs.getString("image_path");
                    int itemId = rs.getInt("Iteam_id");
    //                      out.println(imagePath+"<br>");
                    //String itemDescription = rs.getString("Iteam_description");
                    out.println("<section id='product1' class='section-p1' >");
                    out.println("<div class='pro-container'>");
                    out.println("<div class='pro'>");
                    out.println("<img src=" + imagePath + " alt=''id='img' style='width: 150px; height: 175px;' <a href='#' onclick='redirectToItemDetails(" + itemId + ")' alt=''></a>");
                    out.println("<div class='des'>");
                    out.println("<span>adidas</span>");
                    out.println("<div class='star'>");
                    out.println("<i class='fa fa-star'></i>");
                    out.println("<i class='fa fa-star'></i>");
                    out.println("<i class='fa fa-star'></i>");
                    out.println("<i class='fa fa-star'></i>");
                    out.println("<i class='fa fa-star'></i>");
                    out.println("</div>");
                    //onclick='redirectToItemDetails(1)'
                    //onclick='redirectToItemDetails('+itemId+')'
                    out.println(itemName + "</a> <br>");
                    out.println("Rs: " + itemPrice + "<br>");
                    out.println("</div>");
                    out.println("<a href='#'><i class='fa fa-shopping-cart cart'></i></a>");
                    out.println("<html></div></div></section></html>");
                }
                con.close();
            } catch (Exception e) {
            }
        %>
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
    
    <script>
    function redirectToItemDetails(itemId) {
        window.location.href = 'singleclothes.jsp?id=' + itemId;
    }
    </script>
    
</body>
</html>












