<%-- 
    Document   : singleclothes
    Created on : Dec 10, 2023, 7:03:18 PM
    Author     : SKS
--%>

<%@page import="java.sql.*"%>
<%@page import="java.sql.Statement"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Single Product Page</title>
    <link rel="stylesheet" href="e-commerces-style.css"/>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css" integrity="sha512-Avb2QiuDEEvB4bZJYdft2mNjVShBftLdPG8FJ0V7irTLQ8Uo0qcPxh4Plq7G5tGm0rU+1SPhVotteLpBERwTkw==" crossorigin="anonymous" referrerpolicy="no-referrer" />
</head>

<section id="header" style="background: #E3E6F3; width:100%;height:70px;">
    <a href="#"><img src="images/home-page/homebackground1.jpg" id="logo"  style ="float: left;width: 50px;height: 50px; padding:10px 20px"alt=""/></a>
    <div>
        <ul id="navbar">
            <li><a  href="index.jsp">Home</a></li>
            <li><a class="active" href="clothes.jsp">Clothes</a>
            <li><a href="shoes.jsp">Shoes</a></li>
            <li><a href="cosmetics.jsp">Cosmetics</a></li>
            <li><a href="Jewelry.jsp">Jewelry</a></li>
            <li><a href="cart.jsp"><i class="fa-solid fa-cart-shopping"></i></i></a></li>
            <li><a href="signUp.jsp"><i class="fa fa-user-circle" aria-hidden="true"></i></a></li>
        </ul>
    </div>
</section>

<%
    try {
        Class.forName("com.mysql.jdbc.Driver");
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/e_commerces", "root", "");
        Statement st = con.createStatement();
        String itemId = request.getParameter("id");
        //int val= Integer.parseInt(request.getParameter("num"));
        //out.println(itemId);
        String str = "select Iteam_id, Iteam_name, Iteam_prices,Iteam_description, image_path from iteam_details where Iteam_id = " + itemId;
        ResultSet rs = st.executeQuery(str);
        while (rs.next()) {
            String itemName = rs.getString("Iteam_name");
            int itemPrice = rs.getInt("Iteam_prices");
            String imagePath = rs.getString("image_path");
            String itemDescription = rs.getString("Iteam_description");
            out.println("<section id='prodetails' class='section-p1'>");
            out.println("<div class='single-pro-image'>");
            out.println("<img src=" + imagePath + " id=''style='width:60%; padding:40px 120px'><br><br>");
            out.println("</div>");
            out.println("<div class='single-pro-details'>");
            out.println("<h3>" + itemName + "</h3> <br><br>");
            out.println("<h2> Rs: " + itemPrice + "</h2> <br><br>");
            out.println("<input type='number' value='0' id ='num'>");
            //out.println("<button id='normal' onclick='addToCart(" + itemName + ","+ itemPrice + ")'>Add To Cart</button> <br><br>");
            //String buttonScript = "addToCart('" + itemName + "','" + itemPrice + "')";
            //out.println("<button id='normal' onclick='" + buttonScript + "'>Add To Cart</button>");
            out.println("<button id='normal' onclick=\"" + "addToCart('" + itemName + "','" + itemPrice + "','" + imagePath + "')" + "\">Add To Cart</button>");
            out.println("<p>" + itemDescription + " </p> <br>");
            out.println("</div>");
            out.println("</section>");
        }
        con.close();
    } catch (Exception e) {
    }

%>

<script>
    function addToCart(itemName, itemPrice, imagePath) {
        //var val = document.getElementById(num).value;
        var value = document.getElementById("num").value;
        //console.log (value);
        // Step 1: Retrieve existing data from localStorage
        var existingItems = localStorage.getItem('items');

        // Step 2: Parse existing data (or initialize an empty array)
        var itemsArray = existingItems ? JSON.parse(existingItems) : [];

        // Step 3: Add the new item to the array
        var newItem = {
            name: itemName,
            prices: itemPrice,
            image: imagePath,
            qty: value
        };
        itemsArray.push(newItem);

        // Step 4: Stringify the updated array
        var updatedItems = JSON.stringify(itemsArray);

        // Step 5: Store the updated array back in localStorage
        localStorage.setItem('items', updatedItems);

        // Optional: Log the updated array
        //console.log(updatedItems);
    }
</script>


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