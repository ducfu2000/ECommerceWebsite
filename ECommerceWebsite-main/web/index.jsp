<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!--
Author: W3layouts
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="zxx">

    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>DLC Store</title>
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
        <jsp:include page="header.jsp"></jsp:include>
            <!-- //navigation -->

            <!-- banner -->

            <!-- //banner -->

            <!-- top Products -->
            <div class="ads-grid py-sm-5 py-4">
                <div class="container py-xl-4 py-lg-2">
                    <!-- tittle heading -->
                    <h3 class="tittle-w3l text-center mb-lg-5 mb-sm-4 mb-3">
                        <span>S</span>ản
                        <span>P</span>hẩm
                        <span>M</span>ới</h3>
                    <!-- //tittle heading -->
                    <div class="row">
                        <!-- product left -->
                        <div class="agileinfo-ads-display col-lg-9" id="searchProduct">
                            <div class="wrapper">
                                <!-- first section -->
                                <div class="product-sec1 px-sm-4 px-3 py-sm-5  py-3 mb-4">
                                    <h3 class="heading-tittle text-center font-italic">Laptop Gaming</h3>
                                    <div class="row" id="rowww">
                                    <c:forEach var="o" items="${brandNewLaptop}">
                                        <div class="col-md-4 product-men mt-5">
                                            <div class="men-pro-item simpleCart_shelfItem">
                                                <div class="men-thumb-item text-center">
                                                    <img width="200" height="200" src="${o.image}" alt="">
                                                    <div class="men-cart-pro">
                                                        <div class="inner-men-cart-pro">
                                                            <a href="viewproduct?productId=${o.id}" class="link-product-add-cart">Xem Sản Phẩm</a>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="item-info-product text-center border-top mt-4">
                                                    <h4 class="pt-1">
                                                        <a href="viewproduct?productId=${o.id}">${o.name}</a>
                                                    </h4>
                                                    <div class="info-product-price my-2">
                                                        <span class="item_price">$${o.priceKMVND}</span>
                                                        <del>$${o.priceVND}</del>
                                                    </div>
                                                    <div class="snipcart-details top_brand_home_details item_add single-item hvr-outline-out">
                                                        <form action="AddProductToCartServlet" method="POST">
                                                            <input type="hidden" name="productidb" value="${o.id}" />
                                                            <c:if test="${o.soLuong>0}">
                                                                <input type="submit" name="submit" value="Thêm vào giỏ hàng" class="button btn" />
                                                            </c:if>
                                                            <c:if test="${o.soLuong<=0}">
                                                                <button type="button" class="btn btn-danger">HẾT HÀNG</button>
                                                            </c:if>
                                                        </form>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </c:forEach>
                                </div>
                            </div>
                            <!-- //first section 
                            <!-- second section -->
                            <div class="product-sec1 px-sm-4 px-3 py-sm-5  py-3 mb-4">
                                <h3 class="heading-tittle text-center font-italic">Màn hình Gaming</h3>
                                <div class="row">
                                    <c:forEach var="o" items="${brandNewManHinh}">
                                        <div class="col-md-4 product-men mt-5">
                                            <div class="men-pro-item simpleCart_shelfItem">
                                                <div class="men-thumb-item text-center">
                                                    <img width="200" height="200" src="${o.image}" alt="">
                                                    <div class="men-cart-pro">
                                                        <div class="inner-men-cart-pro">
                                                            <a href="viewproduct?productId=${o.id}" class="link-product-add-cart">Xem sản phẩm</a>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="item-info-product text-center border-top mt-4">
                                                    <h4 class="pt-1">
                                                        <a href="viewproduct?productId=${o.id}">${o.name}</a>
                                                    </h4>
                                                    <div class="info-product-price my-2">
                                                        <span class="item_price">$${o.priceKMVND}</span>
                                                        <del>$${o.priceVND}</del>
                                                    </div>
                                                    <div class="snipcart-details top_brand_home_details item_add single-item hvr-outline-out">
                                                        <form action="AddProductToCartServlet" method="POST">
                                                            <input type="hidden" name="productidb" value="${o.id}" />
                                                            <c:if test="${o.soLuong>0}">
                                                                <input type="submit" name="submit" value="Thêm vào giỏ hàng" class="button btn" />
                                                            </c:if>
                                                            <c:if test="${o.soLuong<=0}">
                                                                <button type="button" class="btn btn-danger">HẾT HÀNG</button>
                                                            </c:if>
                                                        </form>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </c:forEach>
                                </div>
                            </div>
                            <!-- //second section -->
                            <!-- third section -->
                            <div>
                                <img width="825" height="270" src="image/AORUS_BANNER_compresse.jpg" alt="">
                            </div>
                            <!-- //third section -->
                            <!-- fourth section -->
                            <div class="product-sec1 px-sm-4 px-3 py-sm-5  py-3 mt-4">
                                <h3 class="heading-tittle text-center font-italic">PC Gaming, Workstation</h3>
                                <div class="row">
                                    <c:forEach var="o" items="${brandNewPC}">
                                        <div class="col-md-4 product-men mt-5">
                                            <div class="men-pro-item simpleCart_shelfItem">
                                                <div class="men-thumb-item text-center">
                                                    <img width="200" height="200" src="${o.image}" alt="">
                                                    <div class="men-cart-pro">
                                                        <div class="inner-men-cart-pro">
                                                            <a href="viewproduct?productId=${o.id}" class="link-product-add-cart">Xem sản phẩm</a>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="item-info-product text-center border-top mt-4">
                                                    <h4 class="pt-1">
                                                        <a href="viewproduct?productId=${o.id}">${o.name}</a>
                                                    </h4>
                                                    <div class="info-product-price my-2">
                                                        <span class="item_price">$${o.priceKMVND}</span>
                                                        <del>$${o.priceVND}</del>
                                                    </div>
                                                    <div class="snipcart-details top_brand_home_details item_add single-item hvr-outline-out">
                                                        <form action="AddProductToCartServlet" method="POST">
                                                            <input type="hidden" name="productidb" value="${o.id}" />
                                                            <c:if test="${o.soLuong>0}">
                                                                <input type="submit" name="submit" value="Thêm vào giỏ hàng" class="button btn" />
                                                            </c:if>
                                                            <c:if test="${o.soLuong<=0}">
                                                                <button type="button" class="btn btn-danger">HẾT HÀNG</button>
                                                            </c:if>
                                                        </form>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </c:forEach>
                                </div>
                            </div>
                            <!-- //fourth section -->
                        </div>
                    </div>
                    <!-- //product left -->
                    <!-- product right -->
                    <div class="col-lg-3 mt-lg-0 mt-4 p-lg-0" id="product">
                        <div class="side-bar p-sm-4 p-3">
                            <!-- price -->
                            <!-- //price -->
                            <!-- discounts -->
                            <!-- //discounts -->
                            <!-- reviews -->
                            <!-- //arrivals -->
                            <!-- best seller -->
                            <div class="f-grid py-2">
                                <h3 class="agileits-sear-head mb-3">Hàng mới về</h3>
                                <div class="box-scroll">
                                    <div class="scroll">
                                        <c:forEach var="o" items="${top5HangMoiVe}">
                                            <div class="row">
                                                <div class="col-lg-3 col-sm-2 col-3 left-mar">
                                                    <img src="${o.image}" alt="" class="img-fluid">
                                                </div>
                                                <div class="col-lg-9 col-sm-10 col-9 w3_mvd">
                                                    <a href="viewproduct?productId=${o.id}">${o.name}</a>
                                                    <a href="viewproduct?productId=${o.id}" class="price-mar mt-2">$${o.priceKMVND}</a>
                                                </div>
                                            </div>
                                        </c:forEach>
                                    </div>
                                </div>
                            </div>
                            <!-- //best seller -->
                        </div>
                        <!-- //product right -->
                    </div>
                </div>
            </div>
        </div>
        <!-- //top products -->

        <!-- middle section -->

        <!-- middle section -->

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

        <!-- scroll seller -->
        <script src="js/scroll.js"></script>
        <!-- //scroll seller -->

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