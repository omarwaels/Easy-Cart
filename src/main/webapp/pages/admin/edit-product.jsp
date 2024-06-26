<jsp:useBean id="product" scope="request" type="com.ecommerce.Persistence.Entities.Product"/>
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
  <jsp:include page="header.jsp">
    <jsp:param name="active" value="products" />
  </jsp:include>
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
                <form action="Admin?controller=AdminUpdateProductController&id=${product.id}" method="post" class="tm-edit-product-form">
                  <div class="form-group mb-3">
                    <label
                      for="name"
                      >Product Name
                    </label>
                    <input
                            id="name"
                            name="productName"
                            type="text"
                            value="${product.productName}"
                            class="form-control validate"
                    />
                  </div>
                  <div class="form-group mb-3">
                    <label
                      for="description"
                      >Description</label
                    >
                    <textarea
                            name = "productDescription"
                      class="form-control validate tm-small"
                      rows="5"
                      required
                      resize = "none"
                    >${product.productDescription}</textarea>
                  </div>
                  <div class="form-group mb-3">
                    <label for="category">Category</label>
                    <select  name="productCategory" class="custom-select tm-select-accounts" id="category">
                      <jsp:useBean id="categories" scope="request" type="java.util.List"/>
                      <c:forEach var="category" items="${categories}">
                        <option value="${category.id}"
                                <c:if test="${category.id == product.category.id}">selected</c:if>
                        >
                            ${category.categoryName}
                        </option>
                      </c:forEach>
                    </select>
                  </div>
                  <div class="row">
                      <div class="form-group mb-3 col-xs-12 col-sm-6">
                          <label
                            for="price"
                            >Price
                          </label>
                        <input
                                id="price"
                                name="productPrice"
                                type="number"
                                min = "0"
                                value="${product.productPrice}"
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
                                  name="stockQuantity"
                                  type="text"
                                  value="${product.stockQuantity}"
                                  class="form-control"
                          />
                        </div>
                  </div>
                  
              </div>
                <div class="col-xl-6 col-lg-6 col-md-12 mx-auto mb-4">
                    <div class="form-group mb-3">
                        <label for="image1">Image URL 1</label>
                        <input value = "${product.productImages[0].getImageUrl()}" id="image1" name="image1" type="text" class="form-control validate" />
                    </div>
                    <div class="form-group mb-3">
                        <label for="image2">Image URL 2</label>
                        <input value = "${product.productImages[1].getImageUrl()}"id="image2" name="image2" type="text" class="form-control validate" />
                    </div>
                    <div class="form-group mb-3">
                        <label for="image3">Image URL 3</label>
                        <input value ="${product.productImages[2].getImageUrl()}" id="image3" name="image3" type="text" class="form-control validate" />
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

  </body>
</html>
