<%-- 
    Document   : cart.jsp
    Created on : Dec 11, 2023, 8:45:41 PM
    Author     : SKS
--%>

<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Add to cart Page</title>
        <link rel="stylesheet" href="e-commerces-style.css"/>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css" integrity="sha512-Avb2QiuDEEvB4bZJYdft2mNjVShBftLdPG8FJ0V7irTLQ8Uo0qcPxh4Plq7G5tGm0rU+1SPhVotteLpBERwTkw==" crossorigin="anonymous" referrerpolicy="no-referrer" />

    </head>
    <body onload="getItem()">
        <section id="header" style="background: #E3E6F3; width:100%;height:70px;">
            <a href="#"><img src="images/home-page/homebackground1.jpg" id="logo"  style ="float: left;width: 50px;height: 50px; padding:10px 20px"alt=""/></a>
            <div>
                <ul id="navbar">
                    <li><a  href="index.jsp">Home</a></li>
                    <li><a class="active" href="clothes.jsp">Clothes</a>
                    <li><a href="shoes.jsp">Shoes</a></li>
                    <li><a href="cosmetics.jsp">Cosmetics</a></li>
                    <li><a href="Jewelry.jsp">Jewelry</a></li>
                    <li><a href="addtocart.jsp"><i class="fa-solid fa-cart-shopping"></i></i></a></li>
                    <li><a href="signUp.jsp"><i class="fa fa-user-circle" aria-hidden="true"></i></a></li>
                </ul>
            </div>
        </section>
        <section class="cart">
            <div class="column">
                <section class="add-to-cart">
                    <p>Shopping Cart</p>
                    <div class="section-p1">
                        <div id="cart-items">
                            <h1>Kalani</h1>
                            <!--<div class="item-details">
                                    <div class="img"></div>
                                    <div class="item-data">
                                        <h4></h4>
                                    </div>
                            </div>-->
                        </div>
                    </div>
                </section>
            </div>

            <div class="column" calTotal()>
                <center>
                    <div class="summary" style="padding:100px 50px;">
                        <div class="summary-details">
                            <h4>Summary</h4>
                            <br>
                            <hr>
                            <br>
                            <div id="total"></div><br><br><br><br>
                            <div id="sub-total"></div><br><br><br><br>
                            <!--<form action="order" method="post">-->
                            <!--<button type="submit" id="normal" onclick ="submitData()">CHECK OUT</button>-->
                            <button onclick="submitData()">Submit Data</button>

                            <!--</form>-->
                        </div>
                    </div>
                </center>
            </div>
        </section>




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
            function getItem() {
                var existingItems = localStorage.getItem('items');
                var itemsArray = JSON.parse(existingItems);

                var cartItemsDiv = document.getElementById('cart-items');
                clearElement(cartItemsDiv);

                for (var i = 0; i < itemsArray.length; i++) {
                    var item = itemsArray[i];

                    var itemDetailsDiv = createItemDiv(item);

                    cartItemsDiv.appendChild(itemDetailsDiv);
                }
                calTotal(itemsArray);

            }

            function createItemDiv(item) {

                var itemDetailsDiv = document.createElement('div');
                itemDetailsDiv.className = 'item-details';

                var imageDiv = document.createElement('div');
                imageDiv.className = 'image';

                var image = document.createElement('img');
                image.textContent = item.image;
                image.src = item.image;
                image.alt = "Item Image";
                image.style.width = '140px';

                imageDiv.appendChild(image);

                var itemDataDiv = document.createElement('div');
                itemDataDiv.className = 'item-data';

                var itemName = document.createElement('h4');
                itemName.textContent = item.name;

                var itemPrices = document.createElement('h3');
                itemPrices.textContent = item.prices;

                var itemQty = document.createElement('h3');
                itemQty.textContent = item.qty;

                itemDataDiv.appendChild(itemName);
                itemDataDiv.appendChild(itemPrices);
                itemDataDiv.appendChild(itemQty);

                itemDetailsDiv.appendChild(imageDiv);
                itemDetailsDiv.appendChild(itemDataDiv);
                //console.log(itemDetailsDiv);
                return itemDetailsDiv;
            }


            function clearElement(element) {
                while (element.firstChild) {
                    element.removeChild(element.firstChild);
                }
            }

            function calTotal(itemsArray) {
                var total = 0;

                for (var i = 0; i < itemsArray.length; i++) {
                    var item = itemsArray[i];
                    total += item.qty * item.prices;
                }
                document.getElementById("total").innerHTML = " Total =  LKR  " + total + ".00";
                document.getElementById("sub-total").innerHTML = " Sub  Total =  LKR  " + total + ".00";
            }

            function submitData() {
                // Sample data, replace with your actual data gathering logic
                var dataToSubmit = {
                    key1: "value1",
                    key2: "value2",
                    key3: "value3"
                };

                // Make an AJAX request to the server to store the data
                var xhr = new XMLHttpRequest();
                xhr.open('POST', 'order', true);
                xhr.setRequestHeader('Content-Type', 'application/json');
                xhr.onreadystatechange = function () {
                    console.log(xhr);
                    if (xhr.readyState === 4) {
                        if (xhr.status === 200) {
                            // Handle success
                            alert('Data stored successfully!');
                        } else {
                            // Handle error
                            alert('Error storing data!');
                        }
                    }
                };
                xhr.send(JSON.stringify(dataToSubmit));
            }

        </script>





    </div>
</body>
</html>
