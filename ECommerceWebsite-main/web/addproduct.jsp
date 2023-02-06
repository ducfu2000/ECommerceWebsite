<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%-- 
    Document   : updateproduct
    Created on : Mar 13, 2021, 1:22:32 PM
    Author     : ADMIN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add Product</title>
        <link href="//netdna.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
        <script src="//netdna.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
        <script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
    </head>
    <body>
            <form class="form-horizontal" action="addproduct" method="POST">
                <fieldset>
                    <!-- Form Name -->
                    <legend>Thêm sản phẩm</legend>
                    <!-- Text input-->
                    <div class="form-group">
                        <label class="col-md-4 control-label" for="product_id">Tên sản phẩm</label>
                        <div class="col-md-4">
                            <input id="product_id" name="product_name" placeholder="Tên sản phẩm" class="form-control input-md" required="" type="text">

                        </div>
                    </div>

                    <!-- Text input-->
                    <div class="form-group">
                        <label class="col-md-4 control-label" for="product_name">Giá</label>  
                        <div class="col-md-4">
                            <input id="product_name" name="price" placeholder="Giá" class="form-control input-md" required="" type="number">

                        </div>
                    </div>

                    <!-- Text input-->
                    <div class="form-group">
                        <label class="col-md-4 control-label" for="product_name_fr">Giá khuyến mãi</label>  
                        <div class="col-md-4">
                            <input id="product_name_fr" name="price_km" placeholder="Giá khuyến mãi" class="form-control input-md" required="" type="number">

                        </div>
                    </div>
                    <!-- Select Basic -->
                <jsp:useBean id="dal" scope="page" class="dal.DAO" />
                <div class="form-group">
                    <label class="col-md-4 control-label" for="product_categorie">Danh mục sản phẩm</label>
                    <div class="col-md-4">
                        <select id="product_categorie" name="product_categorie" class="form-control">
                            <c:forEach var="o" items="${dal.allDanhMucSP}">
                                <option value="${o.id}">
                                    ${o.name}
                                </option>
                            </c:forEach>
                        </select>

                    </div>
                </div>

                <!-- Text input-->
                <div class="form-group">
                    <label class="col-md-4 control-label" for="available_quantity">Số lượng</label>  
                    <div class="col-md-4">
                        <input id="available_quantity" name="available_quantity" placeholder="Số lượng" class="form-control input-md" required="" type="number">

                    </div>
                </div>
                <!-- Textarea -->
                <div class="form-group">
                    <label class="col-md-4 control-label" for="product_description">Cấu hình</label>
                    <div class="col-md-4">                     
                        <textarea class="form-control" placeholder="ngăn cách nhau bởi dấu ';' || Example: R5 3600;B450;16GB RAM;256GB SSD;GTX 1660 SUPER;550W;RGB" id="product_description" name="cauhinh" rows="9" cols="70"></textarea>
                    </div>

                </div>
                <!-- Textarea -->
                <div class="form-group">
                    <label class="col-md-4 control-label" for="product_description">Mô tả</label>
                    <div class="col-md-4">                     
                        <textarea class="form-control" id="product_description" name="mota" rows="9" cols="70"></textarea>
                    </div>
                </div>
                <!-- Textarea -->
                <div class="form-group">
                    <label class="col-md-4 control-label" for="product_description">Hình ảnh</label>
                    <div class="col-md-4">                     
                        <textarea class="form-control" placeholder="ngăn cách nhau bởi dấu ';' || Example: image\anh1.jpg;image\anh2.jpg" id="product_description" name="image" rows="9" cols="70"></textarea>
                    </div>
                </div>
                <!-- Text input-->
                <div class="form-group">
                    <label class="col-md-4 control-label" for="percentage_discount">Hãng sản xuất</label>  
                    <div class="col-md-4">
                        <input id="percentage_discount" name="hangsx" placeholder="razer, zowie, logitech,..." class="form-control input-md" required="" type="text">

                    </div>
                </div>
                <div class="form-group">
                    <label class="col-md-4 control-label" for="percentage_discount">                        
                        <button style="text-align: center" type="submit" class="btn btn-success">Thêm sản phẩm </button>
                    </label>
                </div>
            </fieldset>
        </form>

    </body>
</html>
