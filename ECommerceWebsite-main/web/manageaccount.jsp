<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%-- 
    Document   : newjsp
    Created on : Mar 3, 2021, 7:20:10 PM
    Author     : ADMIN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!--
Author: W3layouts
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<!DOCTYPE html>
<html lang="zxx">

    <head>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-BmbxuPwQa2lc/FVzBcNJ7UAyJxM6wuqIj61tLrc4wSX0szH/Ev+nYRRuWlolflfl" crossorigin="anonymous">
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
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    </head>

    <body>
        <!-- top-header -->


        <!-- Button trigger modal(select-location) -->

        <!-- //shop locator (popup) -->

        <!-- modals -->
        <!-- log in -->

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
                                <a href="home">Trang chủ</a>
                                <i>|</i>
                            </li>
                            <li>Quản Lý Tài Khoản</li>
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
                        <span>Q</span>uản lý tài khoản
                    </h3>
                    <!-- //tittle heading -->
                    <div class="checkout-right">
                        <h4 class="mb-sm-4 mb-3">Đang có 
                            <span>${total} tài khoản</span>
                    </h4>
                    <div class="table-responsive">
                        <table class="timetable_sub">
                            <thead>
                                <tr>
                                    <th>ID</th>
                                    <th>Tên người dùng</th>
                                    <th>Username</th>
                                    <th>Password</th>
                                    <th>Admin</th>
                                    <th>Seller</th>
                                    <th>Hành động</th>
                                </tr>
                            </thead>
                            <tbody>
                                <c:forEach var="o" items="${listA}">
                                    <tr class="rem1">
                                        <td class="invert">${o.id}</td>
                                        <td class="invert-image">
                                            ${o.name}
                                        </td>
                                        <td class="invert">
                                            ${o.username}
                                        </td>
                                        <td class="invert">      
                                            <p id="${o.id}">${o.password}</p>
                                        </td>
                                        <td class="invert">${o.isAdmin?"Yes":"No"}</td>
                                        <td>
                                            ${o.isSeller?"Yes":"No"}
                                        </td>
                                        <td>
                                            <c:if test="${!o.isSeller}">
                                                <button type="button" onclick="location.href = 'SetRoleServlet?id=${o.id}&isSeller=yes'" class="btn btn-primary">Cấp quyền Seller</button>
                                            </c:if>
                                            <c:if test="${o.isSeller}">
                                                <button type="button" onclick="location.href = 'SetRoleServlet?id=${o.id}&isSeller=false'" class="btn btn-secondary">Gỡ quyền Seller</button>
                                            </c:if>
                                        </td>
                                    </tr>
                                </c:forEach>
                            </tbody>
                        </table>
                    </div>
                    <br>
                </div>
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