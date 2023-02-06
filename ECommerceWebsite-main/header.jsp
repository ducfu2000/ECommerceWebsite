<%-- 
    Document   : header
    Created on : Feb 20, 2021, 4:58:07 PM
    Author     : ADMIN
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!-- top-header -->
<div class="agile-main-top">
    <div class="container-fluid">
        <div class="row main-top-w3l py-2">
            <div class="col-lg-4 header-most-top">
                <p class="text-white text-lg-left text-center">DLC Store Uy Tín Số 1 Hà Nội
                    <i class="fas fa-shopping-cart ml-1"></i>
                </p>
            </div>
            <div class="col-lg-8 header-right mt-lg-0 mt-2">
                <!-- header lists -->
                <ul>
                    <c:if  test="${sessionScope.account!=null}">
                        <li style="float: right" class="text-center text-white">
                            <a style="color: white" href="logout">Đăng xuất</a>
                        </li>
                        <li style="float: right" class="text-center text-white">
                            <a style="color: white" href="buy_history.jsp">Lịch sử mua hàng</a>
                        </li>
                    </c:if>
                    <c:if test="${sessionScope.account!=null}">
                        <li style="float: right" class="text-center border-right text-white">
                            Xin chào ${sessionScope.account.name}
                        </li>
                    </c:if>
                    <c:if  test="${sessionScope.account.isAdmin}">
                        <li style="float: right" class="text-center text-white">
                            <a style="color: white" href="ManageProductServlet">Quản lý kho hàng</a>
                        </li>
                        <li style="float: right" class="text-center text-white">
                            <a style="color: white" href="manage_account">Quản lý tài khoản</a>
                        </li>
                    </c:if>
                    <c:if test="${sessionScope.account==null}">
                        <li style="float: right" class=" text-white">
                            <a href="#" data-toggle="modal" data-target="#exampleModal2" class="text-white">
                                <i class="fas fa-sign-out-alt mr-2"></i>Đăng ký </a>
                        </li>
                    </c:if>
                    <c:if test="${sessionScope.account==null}">
                        <li style="float: right" class="   text-white">
                            <a href="login"  class="text-white">
                                <i class="fas fa-sign-in-alt mr-2"></i> Đăng nhập </a>
                        </li>
                    </c:if>
                </ul>
                <!-- //header lists -->
            </div>
        </div>
    </div>
</div>

<!-- Button trigger modal(select-location) -->
<div id="small-dialog1" class="mfp-hide">
    <div class="select-city">
        <h3>
            <i class="fas fa-map-marker"></i> Vui lòng chọn vị trí của bạn</h3>
        <select class="list_of_cities">
            <optgroup label="Miền Bắc">
                <option selected style="display:none;color:#eee;">Chọn thành phố</option>
                <option>Hà Nội</option>
            </optgroup>
            <optgroup label="Miền Trung">
                <option>Nghệ An</option>
                <option>Quảng Nam</option>
            </optgroup>
            <optgroup label="Miền Nam">
                <option>Tp. Hồ Chí Minh</option>
                <option>Bình Dương</option>
            </optgroup>
        </select>
        <div class="clearfix"></div>
    </div>
</div>
<!-- //shop locator (popup) -->

<!-- modals -->
<!-- log in -->
<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title text-center">Đăng nhập</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <form action="#" method="post">
                    <div class="form-group">
                        <label class="col-form-label">Tài khoản</label>
                        <input type="text" class="form-control" placeholder=" " name="user" required="">
                    </div>
                    <div class="form-group">
                        <label class="col-form-label">Mật khẩu</label>
                        <input type="password" class="form-control" placeholder=" " name="pass" required="">
                    </div>
                    <div class="right-w3l">
                        <input type="submit" class="form-control" value="Đăng nhập" onclick="checkLogin(user.value, pass.value)">
                    </div>
                    <div class="sub-w3l">
                        <div class="custom-control custom-checkbox mr-sm-2">
                            <input type="checkbox" class="custom-control-input" id="customControlAutosizing">
                            <label class="custom-control-label" for="customControlAutosizing">Ghi nhớ tôi?</label>
                        </div>
                    </div>
                    <p class="text-center dont-do mt-3">Không có tài khoản?
                        <a href="#" data-toggle="modal" data-target="#exampleModal2">
                            Đăng ký ngay</a>
                    </p>
                </form>
            </div>
        </div>
    </div>
</div>
<!-- register -->
<div class="modal fade" id="exampleModal2" tabindex="-1" role="dialog" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title">Đăng ký</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <form action="register" method="post">
                    <div class="form-group">
                        <label class="col-form-label">Tên của bạn</label>
                        <input type="text" class="form-control" placeholder=" " name="Name" required="">
                    </div>
                    <div class="form-group">
                        <label class="col-form-label">Tài khoản</label>
                        <input type="text" class="form-control" placeholder=" " name="username" required="">
                    </div>
                    <div class="form-group">
                        <label class="col-form-label">Mật khẩu</label>
                        <input type="password" class="form-control" placeholder=" " name="Password" id="password1" required="">
                    </div>
                    <div class="form-group">
                        <label class="col-form-label">Xác nhận mật khẩu</label>
                        <input type="password" class="form-control" placeholder=" " name="ConfirmPassword" id="password2" required="">
                    </div>
                    <div class="right-w3l">
                        <input type="submit"  class="form-control" value="Đăng ký">
                    </div>
                    <div class="sub-w3l">
                        <div class="custom-control custom-checkbox mr-sm-2">
                            <input type="checkbox" class="custom-control-input" id="customControlAutosizing2" required="">
                            <label class="custom-control-label" for="customControlAutosizing2">Tôi đồng ý với điều kiện & điều khoản</label>
                        </div>
                    </div>
                    <div id="txtHint"></div>
                </form>
            </div>
        </div>
    </div>
</div>
<!-- //modal -->
<!-- //top-header -->

<!-- header-bottom-->
<div class="header-bot">
    <div class="container">
        <div class="row header-bot_inner_wthreeinfo_header_mid">
            <!-- logo -->
            <div class="col-md-3 logo_agile">
                <h1 class="text-center">
                    <a href="home" class="font-weight-bold font-italic">
                        <img src="images/logo2.png" alt=" " class="img-fluid">DLC Store
                    </a>
                </h1>
            </div>
            <!-- //logo -->
            <script>
                function searchProduct(str) {
                    var xhttp;
                    if (str == "") {
                        document.getElementById("searchProduct").innerHTML = "";
                        return;
                    }
                    xhttp = new XMLHttpRequest();
                    xhttp.onreadystatechange = function () {
                        if (this.readyState == 4 && this.status == 200) {
                            document.getElementById("searchProduct").innerHTML = this.responseText;
                        }
                    };
                    xhttp.open("GET", "/ProjectQLBH/SearchProductServlet?userInput=" + str, true);
                    xhttp.send();
                }
            </script>
            <!-- header-bot -->
            <div class="col-md-9 header mt-4 mb-md-0 mb-4">
                <div class="row">
                    <!-- search -->
                    <div class="col-10 agileits_search">
                        <form class="form-inline" action="" method="post">
                            <input class="form-control mr-sm-2" oninput="searchProduct(userInput.value)" name="userInput" type="search" placeholder="Nhập sản phẩm cần tìm ..." aria-label="Search" required>
                            <button hidden="" class="btn my-2 my-sm-0" type="submit">Tìm kiếm</button>
                        </form>
                    </div>
                    <!-- //search -->
                    <!-- cart details -->
                    <div class="col-2 top_nav_right text-center mt-sm-0 mt-2">
                        <div class="wthreecartaits wthreecartaits2 cart cart box_1">
                            <!--<form action="#" method="post" class="last">-->
                                <input type="hidden" name="cmd" value="_cart">
                                <input type="hidden" name="display" value="1">
                                <button class="btn w3view-cart" onclick="location.href='AddProductToCartServlet';" name="submit" value="">
                                    <i class="fas fa-cart-arrow-down"></i>
                                </button>
                            <!--</form>-->
                        </div>
                    </div>
                    <!-- //cart details -->
                </div>
            </div>
        </div>
    </div>
</div>
<!-- shop locator (popup) -->
<!-- //header-bottom -->
<!-- navigation -->
<div class="navbar-inner">
    <div class="container">
        <nav class="navbar navbar-expand-lg navbar-light bg-light">
            <jsp:useBean id="dal" class="dal.DAO"/>
            <div class="agileits-navi_search">
                <form action="DanhMucSP" method="post">
                    <select id="agileinfo-nav_search" name="danhmucSP" onchange="this.form.submit()" name="agileinfo_search" class="border" required="">
                        <option value="${type}">DANH MỤC SẢN PHẨM</option>
                        <c:forEach var="o" items="${dal.allDanhMucSP}">
                            <option value="${o.id}" ${type==o.id?"selected":""}>${o.name}</option>
                        </c:forEach>
                    </select>
                </form>
            </div>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent"
                    aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav ml-auto text-center mr-xl-5">
                    <li class="nav-item active mr-lg-2 mb-lg-0 mb-2">
                        <a class="nav-link" href="home">Trang chủ
                            <span class="sr-only">(current)</span>
                        </a>
                    </li>
                    <!--                    <li class="nav-item dropdown mr-lg-2 mb-lg-0 mb-2">
                                            <a class="nav-link dropdown-toggle" href="#" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                                Laptop
                                            </a>
                                            <div class="dropdown-menu">
                                                <div class="agile_inner_drop_nav_info p-4">
                                                    <h5 class="mb-3">Laptop gaming, văn phòng</h5>
                                                    <div class="row">
                                                        <div class="col-sm-6 multi-gd-img">
                                                            <ul class="multi-column-dropdown">
                                                                <li>
                                                                    <a href="product.html">LAPTOP MSI</a>
                                                                </li>
                                                                <li>
                                                                    <a href="product.html">LAPTOP ACER</a>
                                                                </li>
                                                                <li>
                                                                    <a href="product.html">LAPTOP ASUS</a>
                                                                </li>
                                                                <li>
                                                                    <a href="product.html">LAPTOP LENOVO</a>
                                                                </li>
                                                                <li>
                                                                    <a href="product.html">LAPTOP DELL</a>
                                                                </li>
                                                                <li>
                                                                    <a href="product.html">LAPTOP HP</a>
                                                                </li>
                                                            </ul>
                                                        </div>
                                                        <div class="col-sm-6 multi-gd-img">
                                                            <ul class="multi-column-dropdown">
                                                                <li>
                                                                    <a href="product.html">ĐẾ TẢN NHIỆT</a>
                                                                </li>
                                                                <li>
                                                                    <a href="product.html">BA LÔ & TÚI XÁCH</a>
                                                                </li>
                                                                <li>
                                                                    <a href="product.html">CÁC DỊCH VỤ VỀ LAPTOP</a>
                                                                </li>
                                                            </ul>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </li>-->
                    <!--                    <li class="nav-item dropdown mr-lg-2 mb-lg-0 mb-2">
                                            <a class="nav-link dropdown-toggle" href="#" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                                Màn Hình    
                                            </a>
                                            <div class="dropdown-menu">
                                                <div class="agile_inner_drop_nav_info p-4">
                                                    <h5 class="mb-3">Màn hình gaming, đồ họa</h5>
                                                    <div class="row">
                                                        <div class="col-sm-6 multi-gd-img">
                                                            <ul class="multi-column-dropdown">
                                                                <li>
                                                                    <a href="product2.html">Màn hình Asus</a>
                                                                </li>
                                                                <li>
                                                                    <a href="product2.html">Màn hình Cooler Master</a>
                                                                </li>
                                                                <li>
                                                                    <a href="product2.html">Màn hình AOC</a>
                                                                </li>
                                                                <li>
                                                                    <a href="product2.html">Màn hình Samsumg</a>
                                                                </li>
                                                                <li>
                                                                    <a href="product2.html">Màn hình Acer</a>
                                                                </li>
                                                                <li>
                                                                    <a href="product2.html">Màn hình Dell</a>
                                                                </li>
                                                            </ul>
                                                        </div>
                                                        <div class="col-sm-6 multi-gd-img">
                                                            <ul class="multi-column-dropdown">
                                                                <li>
                                                                    <a href="product2.html">Màn hình đồ họa</a>
                                                                </li>
                                                                <li>
                                                                    <a href="product2.html">Màn hình phổ thông</a>
                                                                </li>
                                                                <li>
                                                                    <a href="product2.html">Màn hình giá rẻ</a>
                                                                </li>
                                                                <li>
                                                                    <a href="product2.html">Màn hình thông minh</a>
                                                                </li>
                                                            </ul>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </li>-->
                    <li class="nav-item mr-lg-2 mb-lg-0 mb-2">
                        <a class="nav-link" href="about.jsp">Giới thiệu</a>
                    </li>
                    <!--                    <li class="nav-item mr-lg-2 mb-lg-0 mb-2">
                                            <a class="nav-link" href="product.html">New Arrivals</a>
                                        </li>-->
                    <!--                    <li class="nav-item dropdown mr-lg-2 mb-lg-0 mb-2">
                                            <a class="nav-link dropdown-toggle" href="#" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                                Pages
                                            </a>
                                            <div class="dropdown-menu">
                                                <a class="dropdown-item" href="product.html">Product 1</a>
                                                <a class="dropdown-item" href="product2.html">Product 2</a>
                                                <div class="dropdown-divider"></div>
                                                <a class="dropdown-item" href="single.html">Single Product 1</a>
                                                <a class="dropdown-item" href="single2.html">Single Product 2</a>
                                                <div class="dropdown-divider"></div>
                                                <a class="dropdown-item" href="checkout.html">Checkout Page</a>
                                                <a class="dropdown-item" href="payment.html">Payment Page</a>
                                            </div>
                                        </li>-->
                    <li class="nav-item">
                        <a class="nav-link" href="contact.jsp">Liên hệ</a>
                    </li>
                </ul>
            </div>
        </nav>
    </div>
</div>
