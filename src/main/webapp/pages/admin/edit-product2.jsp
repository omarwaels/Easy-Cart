<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page
        language="java" contentType="text/html; charset=ISO-8859-1"
        pageEncoding="ISO-8859-1"%>
<%@ page import="com.ecommerce.Persistence.Entities.Product" %>
<%@ page import="com.ecommerce.Persistence.Entities.Category" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta http-equiv="X-UA-Compatible" content="ie=edge" />
    <title>Edit Product - Dashboard Admin Template</title>
    <link
            rel="stylesheet"
            href="https://fonts.googleapis.com/css?family=Roboto:400,700"
    />
    <!-- https://fonts.google.com/specimen/Roboto -->
    <link rel="stylesheet" href="assets/adminAssets/css/fontawesome.min.css" />
    <!-- https://fontawesome.com/ -->
    <link rel="stylesheet" href="assets/adminAssets/jquery-ui-datepicker/jquery-ui.min.css" type="text/css" />
    <!-- http://api.jqueryui.com/datepicker/ -->
    <link rel="stylesheet" href="assets/adminAssets/css/bootstrap.min.css" />
    <!-- https://getbootstrap.com/ -->
    <link rel="stylesheet" href="assets/adminAssets/css/templatemo-style.css">
    <!--
	Product Admin CSS Template
	https://templatemo.com/tm-524-product-admin
	-->
</head>

<body>
<jsp:include page="header.jsp" />
<div class="container tm-mt-big tm-mb-big">
    <div class="row">
        <div class="col-xl-9 col-lg-10 col-md-12 col-sm-12 mx-auto">
            <div class="tm-bg-primary-dark tm-block tm-block-h-auto">
                <div class="row">
                    <div class="col-12">
                        <h2 class="tm-block-title d-inline-block">Edit Product</h2>
                    </div>
                </div>
                <div class="row tm-edit-product-row">
                    <div class="col-xl-6 col-lg-6 col-md-12">
                        <form action="" method="post" class="tm-edit-product-form">
                            <div class="form-group mb-3">
                                <label
                                        for="name"
                                >Product Name
                                </label>
                                <input
                                        id="name"
                                        name="name"
                                        type="text"
                                        value="Lorem Ipsum Product"
                                        class="form-control validate"
                                />
                            </div>
                            <div class="form-group mb-3">
                                <label
                                        for="description"
                                >Description</label
                                >
                                <textarea
                                        class="form-control validate tm-small"
                                        rows="5"
                                        required
                                >Lorem ipsum dolor amet gentrify glossier locavore messenger bag chillwave hashtag irony migas wolf kale chips small batch kogi direct trade shaman.</textarea>
                            </div>
                            <div class="form-group mb-3">
                                <label
                                        for="category"
                                >Category</label
                                >
                                <select
                                        class="custom-select tm-select-accounts"
                                        id="category"
                                >
                                    <option>Select category</option>
                                    <option value="1" selected>New Arrival</option>
                                    <option value="2">Most Popular</option>
                                    <option value="3">Trending</option>
                                </select>
                            </div>
                            <div class="row">
                                <div class="form-group mb-3 col-xs-12 col-sm-6">
                                    <label
                                            for="expire_date"
                                    >Expire Date
                                    </label>
                                    <input
                                            id="expire_date"
                                            name="expire_date"
                                            type="text"
                                            value="22 Oct, 2020"
                                            class="form-control validate"
                                            data-large-mode="true"
                                    />
                                </div>
                                <div class="form-group mb-3 col-xs-12 col-sm-6">
                                    <label
                                            for="stock"
                                    >Units In Stock
                                    </label>
                                    <input
                                            id="stock"
                                            name="stock"
                                            type="text"
                                            value="19,765"
                                            class="form-control validate"
                                    />
                                </div>
                            </div>

                    </div>
                    <div class="col-xl-6 col-lg-6 col-md-12 mx-auto mb-4">
                        <div class="tm-product-img-edit mx-auto">
                            <img src="assets/adminAssets/img/product-image.jpg" alt="Product image" class="img-fluid d-block mx-auto">
                            <i
                                    class="fas fa-cloud-upload-alt tm-upload-icon"
                                    onclick="document.getElementById('fileInput').click();"
                            ></i>
                        </div>
                        <div class="custom-file mt-3 mb-3">
                            <input id="fileInput" type="file" style="display:none;" />
                            <input
                                    type="button"
                                    class="btn btn-primary btn-block mx-auto"
                                    value="CHANGE IMAGE NOW"
                                    onclick="document.getElementById('fileInput').click();"
                            />
                        </div>
                    </div>
                    <div class="col-12">
                        <button type="submit" class="btn btn-primary btn-block text-uppercase">Update Now</button>
                    </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
<footer class="tm-footer row tm-mt-small">
    <div class="col-12 font-weight-light">
        <p class="text-center text-white mb-0 px-4 small">
            Copyright &copy; <b>2018</b> All rights reserved.

            Design: <a rel="nofollow noopener" href="https://templatemo.com" class="tm-footer-link">Template Mo</a>
        </p>
    </div>
</footer>

<script src="assets/adminAssets/js/jquery-3.3.1.min.js"></script>
<!-- https://jquery.com/download/ -->
<script src="assets/adminAssets/jquery-ui-datepicker/jquery-ui.min.js"></script>
<!-- https://jqueryui.com/download/ -->
<script src="assets/adminAssets/js/bootstrap.min.js"></script>
<!-- https://getbootstrap.com/ -->
<script>
    $(function() {
        $("#expire_date").datepicker({
            defaultDate: "10/22/2020"
        });
    });
</script>
</body>
</html>
