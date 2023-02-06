<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%-- 
    Document   : checkout
    Created on : Mar 14, 2021, 11:20:16 AM
    Author     : ADMIN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zxx">

    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Electro Store Ecommerce Category Bootstrap Responsive Web Template | Checkout :: w3layouts</title>
        <!-- Meta tag Keywords -->
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta charset="UTF-8" />
        <meta name="keywords" content="Electro Store Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design"
              />
        <script>
            addEventListener("load", function () {
                setTimeout(hideURLbar, 0);
            }, false);

            function hideURLbar() {
                window.scrollTo(0, 1);
            }
        </script>
        <!-- //Meta tag Keywords -->

        <!-- Custom-Files -->
        <link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
        <!-- Bootstrap css -->
        <link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
        <!-- Main css -->
        <link rel="stylesheet" href="css/fontawesome-all.css">
        <!-- Font-Awesome-Icons-CSS -->
        <link href="css/popuo-box.css" rel="stylesheet" type="text/css" media="all" />
        <!-- pop-up-box -->
        <link href="css/menu.css" rel="stylesheet" type="text/css" media="all" />
        <!-- menu style -->
        <!-- //Custom-Files -->

        <!-- web fonts -->
        <link href="//fonts.googleapis.com/css?family=Lato:100,100i,300,300i,400,400i,700,700i,900,900i&amp;subset=latin-ext" rel="stylesheet">
        <link href="//fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i,800,800i&amp;subset=cyrillic,cyrillic-ext,greek,greek-ext,latin-ext,vietnamese"
              rel="stylesheet">
        <!-- //web fonts -->

    </head>

    <body>
        <!-- top-header -->


        <!-- Button trigger modal(select-location) -->

        <!-- //shop locator (popup) -->

        <!-- modals -->
        <!-- log in -->

        <!-- register -->

        <!-- //modal -->
        <!-- //top-header -->

        <!-- header-bottom-->

        <!-- shop locator (popup) -->
        <!-- //header-bottom -->
        <!-- navigation -->

        <!-- //navigation -->

        <!-- banner-2 -->
        <jsp:include page="header.jsp"></jsp:include>
            <!-- //banner-2 -->
            <!-- page -->
            <div class="services-breadcrumb">
                <div class="agile_inner_breadcrumb">
                    <div class="container">
                        <ul class="w3_short">
                            <li>
                                <a href="home">Home</a>
                                <i>|</i>
                            </li>
                            <li>Lịch sử mua hàng</li>
                        </ul>
                    </div>
                </div>
            </div>
            <!-- //page -->
            <!-- checkout page -->
            <div class="privacy py-sm-5 py-4">
                <div class="container py-xl-4 py-lg-2">
                    <!-- tittle heading -->
                    <h3 class="tittle-w3l text-center mb-lg-5 mb-sm-4 mb-3">
                        Lịch sử mua hàng
                    </h3>
                    <!-- //tittle heading -->
                    <div class="checkout-right">
                    <div class="table-responsive">
                        <table class="timetable_sub">
                            <thead>
                                <tr>
                                    <th>ID</th>
                                    <th>Sản phẩm</th>
                                    <th>Số lượng</th>
                                    <th>Tên sản phẩm</th>
                                    <th>Giá</th>
                                    <th>Ngày mua</th>
                                </tr>
                            </thead>
                            <tbody>
                                <jsp:useBean id="c" scope="page" class="dal.DAO" />
                                <c:forEach var="o" items="${c.getAllBuyHistory(sessionScope.account.id)}">
                                    <tr class="rem1">
                                        <td class="invert">${o.id}</td>
                                        <td class="">
                                            <a href="viewproduct?productId=${o.product_id}">
                                                <img width="200" height="200" src="${o.p.image}">
                                            </a>
                                        </td>
                                        <td class="invert">
                                            <div class="quantity">
                                                <div class="quantity-select">
                                                    <div class="entry value">
                                                        <span>${o.product_quantity}</span>
                                                    </div>
                                                </div>
                                            </div>
                                        </td>
                                        <td class="">${o.product_name}</td>
                                        <td class="invert">$${o.product_price}</td>
                                        <td hidden="" class="invert">${o.account_id}</td>
                                        <td class="invert">${o.getD()}</td>
                                    </tr>
                                </c:forEach>
                            </tbody>
                        </table>
                    </div>
                </div>
                <br>

                <!--                <div class="checkout-left">
                                    <div class="address_form_agile mt-sm-5 mt-4">
                                        <h4 class="mb-sm-4 mb-3">Add a new Details</h4>
                                        <form action="payment.html" method="post" class="creditly-card-form agileinfo_form">
                                            <div class="creditly-wrapper wthree, w3_agileits_wrapper">
                                                <div class="information-wrapper">
                                                    <div class="first-row">
                                                        <div class="controls form-group">
                                                            <input class="billing-address-name form-control" type="text" name="name" placeholder="Full Name" required="">
                                                        </div>
                                                        <div class="w3_agileits_card_number_grids">
                                                            <div class="w3_agileits_card_number_grid_left form-group">
                                                                <div class="controls">
                                                                    <input type="text" class="form-control" placeholder="Mobile Number" name="number" required="">
                                                                </div>
                                                            </div>
                                                            <div class="w3_agileits_card_number_grid_right form-group">
                                                                <div class="controls">
                                                                    <input type="text" class="form-control" placeholder="Landmark" name="landmark" required="">
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="controls form-group">
                                                            <input type="text" class="form-control" placeholder="Town/City" name="city" required="">
                                                        </div>
                                                        <div class="controls form-group">
                                                            <select class="option-w3ls">
                                                                <option>Select Address type</option>
                                                                <option>Office</option>
                                                                <option>Home</option>
                                                                <option>Commercial</option>
                
                                                            </select>
                                                        </div>
                                                    </div>
                                                    <button class="submit check_out btn">Delivery to this Address</button>
                                                </div>
                                            </div>
                                        </form>
                                        <div class="checkout-right-basket">
                                            <a href="payment.html">Make a Payment
                                                <span class="far fa-hand-point-right"></span>
                                            </a>
                                        </div>
                                    </div>
                                </div>-->
            </div>
        </div>
        <!-- //checkout page -->

        <!-- middle section -->

        <!-- middle section -->

        <!-- footer -->

        <!-- //footer -->
        <!-- copyright -->
        <jsp:include page="footer.jsp"></jsp:include>
        <!-- //copyright -->

        <!-- js-files -->
        <!-- jquery -->
        <script src="js/jquery-2.2.3.min.js"></script>
        <!-- //jquery -->

        <!-- nav smooth scroll -->
        <script>
                                                        $(document).ready(function () {
                                                            $(".dropdown").hover(
                                                                    function () {
                                                                        $('.dropdown-menu', this).stop(true, true).slideDown("fast");
                                                                        $(this).toggleClass('open');
                                                                    },
                                                                    function () {
                                                                        $('.dropdown-menu', this).stop(true, true).slideUp("fast");
                                                                        $(this).toggleClass('open');
                                                                    }
                                                            );
                                                        });
        </script>
        <!-- //nav smooth scroll -->

        <!-- popup modal (for location)-->
        <script src="js/jquery.magnific-popup.js"></script>
        <script>
                                                        $(document).ready(function () {
                                                            $('.popup-with-zoom-anim').magnificPopup({
                                                                type: 'inline',
                                                                fixedContentPos: false,
                                                                fixedBgPos: true,
                                                                overflowY: 'auto',
                                                                closeBtnInside: true,
                                                                preloader: false,
                                                                midClick: true,
                                                                removalDelay: 300,
                                                                mainClass: 'my-mfp-zoom-in'
                                                            });

                                                        });
        </script>
        <!-- //popup modal (for location)-->

        <!-- cart-js -->
        <script src="js/minicart.js"></script>
        <script>
                                                        paypals.minicarts.render(); //use only unique class names other than paypals.minicarts.Also Replace same class name in css and minicart.min.js

                                                        paypals.minicarts.cart.on('checkout', function (evt) {
                                                            var items = this.items(),
                                                                    len = items.length,
                                                                    total = 0,
                                                                    i;

                                                            // Count the number of each item in the cart
                                                            for (i = 0; i < len; i++) {
                                                                total += items[i].get('quantity');
                                                            }

                                                            if (total < 3) {
                                                                alert('The minimum order quantity is 3. Please add more to your shopping cart before checking out');
                                                                evt.preventDefault();
                                                            }
                                                        });
        </script>
        <!-- //cart-js -->

        <!-- password-script -->
        <script>
            window.onload = function () {
                document.getElementById("password1").onchange = validatePassword;
                document.getElementById("password2").onchange = validatePassword;
            }

            function validatePassword() {
                var pass2 = document.getElementById("password2").value;
                var pass1 = document.getElementById("password1").value;
                if (pass1 != pass2)
                    document.getElementById("password2").setCustomValidity("Passwords Don't Match");
                else
                    document.getElementById("password2").setCustomValidity('');
                //empty string means no validation error
            }
        </script>
        <!-- //password-script -->

        <!-- quantity -->
        <script>
            $('.value-plus').on('click', function () {
                var divUpd = $(this).parent().find('.value'),
                        newVal = parseInt(divUpd.text(), 10) + 1;
                divUpd.text(newVal);
            });

            $('.value-minus').on('click', function () {
                var divUpd = $(this).parent().find('.value'),
                        newVal = parseInt(divUpd.text(), 10) - 1;
                if (newVal >= 1)
                    divUpd.text(newVal);
            });
        </script>
        <!--quantity-->
        <script>
            $(document).ready(function (c) {
                $('.close1').on('click', function (c) {
                    $('.rem1').fadeOut('slow', function (c) {
                        $('.rem1').remove();
                    });
                });
            });
        </script>
        <script>
            $(document).ready(function (c) {
                $('.close2').on('click', function (c) {
                    $('.rem2').fadeOut('slow', function (c) {
                        $('.rem2').remove();
                    });
                });
            });
        </script>
        <script>
            $(document).ready(function (c) {
                $('.close3').on('click', function (c) {
                    $('.rem3').fadeOut('slow', function (c) {
                        $('.rem3').remove();
                    });
                });
            });
        </script>
        <!-- //quantity -->

        <!-- smoothscroll -->
        <script src="js/SmoothScroll.min.js"></script>
        <!-- //smoothscroll -->

        <!-- start-smooth-scrolling -->
        <script src="js/move-top.js"></script>
        <script src="js/easing.js"></script>
        <script>
            jQuery(document).ready(function ($) {
                $(".scroll").click(function (event) {
                    event.preventDefault();

                    $('html,body').animate({
                        scrollTop: $(this.hash).offset().top
                    }, 1000);
                });
            });
        </script>
        <!-- //end-smooth-scrolling -->

        <!-- smooth-scrolling-of-move-up -->
        <script>
            $(document).ready(function () {
                /*
                 var defaults = {
                 containerID: 'toTop', // fading element id
                 containerHoverID: 'toTopHover', // fading element hover id
                 scrollSpeed: 1200,
                 easingType: 'linear' 
                 };
                 */
                $().UItoTop({
                    easingType: 'easeOutQuart'
                });

            });
        </script>
        <!-- //smooth-scrolling-of-move-up -->

        <!-- for bootstrap working -->
        <script src="js/bootstrap.js"></script>
        <!-- //for bootstrap working -->
        <!-- //js-files -->

    </body>

</html>
