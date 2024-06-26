<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
  <head>
    <title>Shoping Cart</title>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <!--===============================================================================================-->
    <link rel="icon" type="image/png" href="assets/images/icons/favicon.png" />
    <!--===============================================================================================-->
    <link
      rel="stylesheet"
      type="text/css"
      href="assets/vendor/bootstrap/css/bootstrap.min.css"
    />
    <!--===============================================================================================-->
    <link
      rel="stylesheet"
      type="text/css"
      href="assets/fonts/font-awesome-4.7.0/css/font-awesome.min.css"
    />
    <!--===============================================================================================-->
    <link
      rel="stylesheet"
      type="text/css"
      href="assets/fonts/iconic/css/material-design-iconic-font.min.css"
    />
    <!--===============================================================================================-->
    <link
      rel="stylesheet"
      type="text/css"
      href="assets/fonts/linearicons-v1.0.0/icon-font.min.css"
    />
    <!--===============================================================================================-->
    <link
      rel="stylesheet"
      type="text/css"
      href="assets/vendor/animate/animate.css"
    />
    <!--===============================================================================================-->
    <link
      rel="stylesheet"
      type="text/css"
      href="assets/vendor/css-hamburgers/hamburgers.min.css"
    />
    <!--===============================================================================================-->
    <link
      rel="stylesheet"
      type="text/css"
      href="assets/vendor/animsition/css/animsition.min.css"
    />
    <!--===============================================================================================-->
    <link
      rel="stylesheet"
      type="text/css"
      href="assets/vendor/select2/select2.min.css"
    />
    <!--===============================================================================================-->
    <link
      rel="stylesheet"
      type="text/css"
      href="assets/vendor/perfect-scrollbar/perfect-scrollbar.css"
    />
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="assets/css/util.css" />
    <link rel="stylesheet" type="text/css" href="assets/css/main.css" />
    <!--===============================================================================================-->
    <style>
      .disabled {
        opacity: 0.5;
        pointer-events: none;
        cursor: not-allowed;
      }
      .unselectable {
        -webkit-user-select: none; /* Safari */
        -moz-user-select: none; /* Firefox */
        -ms-user-select: none; /* IE/Edge */
        user-select: none; /* Standard syntax */
      }
    </style>
  </head>
  <body class="animsition">
    <!-- Header -->
    <jsp:include page="header.jsp">
      <jsp:param name="active" value="oooo" />
    </jsp:include>

    <!-- Cart -->
    <jsp:include page="viewCart.jsp" />

    <!-- breadcrumb -->
    <div class="container">
      <div class="bread-crumb flex-w p-l-25 p-r-15 p-t-30 p-lr-0-lg">
        <a href="../index.html" class="stext-109 cl8 hov-cl1 trans-04">
          Home
          <i class="fa fa-angle-right m-l-9 m-r-10" aria-hidden="true"></i>
        </a>

        <span class="stext-109 cl4"> Shoping Cart </span>
      </div>
    </div>

    <!-- Shoping Cart -->
    <form class="bg0 p-t-75 p-b-85">
      <div class="container">
        <div class="row">
          <div class="col-lg-10 col-xl-7 m-lr-auto m-b-50">
            <div class="m-l-25 m-r--38 m-lr-0-xl">
              <div class="wrap-table-shopping-cart">
                <table class="table-shopping-cart">
                  <tr class="table_head">
                    <th class="column-1">Product</th>
                    <th class="column-2"></th>
                    <th class="column-3">Price</th>
                    <th class="column-4">Quantity</th>
                    <th class="column-5">Total</th>
                  </tr>

                  <c:forEach var="item" items="${sessionScope.cartItems}">
                    <tr class="table_row">
                      <td class="column-1">
                        <div class="how-itemcart1">
                          <img
                            src="${item.product.productImages[0].getImageUrl()}"
                            alt="IMG"
                          />
                        </div>
                      </td>
                      <td class="column-2">${item.product.productName}</td>
                      <td class="column-3">$ ${item.product.productPrice}</td>
                      <td class="column-4">
                        <div
                          class="wrap-num-product flex-w m-l-auto m-r-0"
                          style="
                            display: flex;
                            justify-content: flex-end;
                            align-items: center;
                            border: none;
                          "
                        >
                          <input
                            id="itemQuantityInputId"
                            class="mtext-104 cl3 txt-center num-product middle"
                            type="number"
                            name="num-product1"
                            value="${item.quantity}"
                          />
                        </div>
                      </td>
                      <td id="totalAmount" class="column-5">
                        $ ${item.product.productPrice * item.quantity}
                      </td>
                    </tr>
                  </c:forEach>

                  <!-- <tr class="table_row">
                    <td class="column-1">
                      <div class="how-itemcart1">
                        <img
                          src="assets/images/item-cart-05.jpg"
                          alt="IMG"
                        />
                      </div>
                    </td>
                    <td class="column-2">Lightweight Jacket</td>
                    <td class="column-3">$ 16.00</td>
                    <td class="column-4">
                      <div class="wrap-num-product flex-w m-l-auto m-r-0">
                        <div
                          class="btn-num-product-down cl8 hov-btn3 trans-04 flex-c-m"
                        >
                          <i class="fs-16 zmdi zmdi-minus"></i>
                        </div>

                        <input
                          class="mtext-104 cl3 txt-center num-product"
                          type="number"
                          name="num-product2"
                          value="1"
                        />

                        <div
                          class="btn-num-product-up cl8 hov-btn3 trans-04 flex-c-m"
                        >
                          <i class="fs-16 zmdi zmdi-plus"></i>
                        </div>
                      </div>
                    </td>
                    <td class="column-5">$ 16.00</td>
                  </tr> -->
                </table>
              </div>

              <div
                class="flex-w flex-sb-m bor15 p-t-18 p-b-15 p-lr-40 p-lr-15-sm"
              >
                <div class="flex-w flex-m m-r-20 m-tb-5">
                  <input
                    class="stext-104 cl2 plh4 size-117 bor13 p-lr-20 m-r-10 m-tb-5"
                    type="text"
                    name="coupon"
                    placeholder="Coupon Code"
                  />

                  <div
                    class="flex-c-m stext-101 cl2 size-118 bg8 bor13 hov-btn3 p-lr-15 trans-04 pointer m-tb-5 unselectable disabled"
                  >
                    Apply coupon
                  </div>
                </div>

                <div
                  class="flex-c-m stext-101 cl2 size-119 bg8 bor13 hov-btn3 p-lr-15 trans-04 pointer m-tb-10 unselectable disabled"
                >
                  Update Cart
                </div>
              </div>
            </div>
          </div>

          <div class="col-sm-10 col-lg-7 col-xl-5 m-lr-auto m-b-50">
            <div
              class="bor10 p-lr-40 p-t-30 p-b-40 m-l-63 m-r-40 m-lr-0-xl p-lr-15-sm"
            >
              <h4 class="mtext-109 cl2 p-b-30">Cart Totals</h4>

              <div class="flex-w flex-t bor12 p-b-13">
                <div class="size-208">
                  <span class="stext-110 cl2"> Subtotal: </span>
                </div>

                <div class="size-209">
                  <span class="mtext-110 cl2">
                      $
                      <c:set var="total" value="0" />
                      <c:forEach var="item" items="${sessionScope.cartItems}">
                          <c:set var="total" value="${total + (item.product.productPrice * item.quantity)}" />
                      </c:forEach>
                      ${total}
                  </span>
                </div>
              </div>

              <div class="flex-w flex-t bor12 p-t-15 p-b-30">
                <div class="size-208 w-full-ssm">
                  <span class="stext-110 cl2"> Shipping: </span>
                </div>

                <div class="size-209 p-r-18 p-r-0-sm w-full-ssm">
                  <p class="stext-111 cl6 p-t-2">
                    There are no shipping methods available. Please double check
                    your address, or contact us if you need any help.
                  </p>

                  <div class="p-t-15">
                    <span class="stext-112 cl8"> Calculate Shipping </span>

                    <div class="rs1-select2 rs2-select2 bor8 bg0 m-b-12 m-t-9">
                      <select class="js-select2" name="time">
                        <option>Select a country...</option>
                        <option>USA</option>
                        <option>UK</option>
                      </select>
                      <div class="dropDownSelect2"></div>
                    </div>

                    <div class="bor8 bg0 m-b-12">
                      <input
                        class="stext-111 cl8 plh3 size-111 p-lr-15"
                        type="text"
                        name="state"
                        placeholder="State /  country"
                      />
                    </div>

                    <div class="bor8 bg0 m-b-22">
                      <input
                        class="stext-111 cl8 plh3 size-111 p-lr-15"
                        type="text"
                        name="postcode"
                        placeholder="Postcode / Zip"
                      />
                    </div>

                    <div class="flex-w">
                      <div
                        class="flex-c-m stext-101 cl2 size-115 bg8 bor13 hov-btn3 p-lr-15 trans-04 pointer unselectable disabled"
                      >
                        Update Totals
                      </div>
                    </div>
                  </div>
                </div>
              </div>

              <div class="flex-w flex-t p-t-27 p-b-33">
                <div class="size-208">
                  <span class="mtext-101 cl2"> Total: </span>
                </div>

                <div class="size-209 p-t-1">
                  <span class="mtext-110 cl2">
                      $
                      <c:set var="total" value="0" />
                      <c:forEach var="item" items="${sessionScope.cartItems}">
                          <c:set var="total" value="${total + (item.product.productPrice * item.quantity)}" />
                      </c:forEach>
                      ${total}
                  </span>
                </div>
              </div>

              <a
                class="flex-c-m stext-101 cl0 size-116 bg3 bor14 hov-btn3 p-lr-15 trans-04 pointer"
                style="color: white"
                onclick="proceedToCheckout()"
              >
                Proceed to Checkout
              </a>
              <span>
                <p id="checkoutError" style="color: red"></p>
              </span>
            </div>
          </div>
        </div>
      </div>
    </form>

    <!-- Footer -->
    <jsp:include page="footer.jsp" />

    <!-- Back to top -->
    <div class="btn-back-to-top" id="myBtn">
      <span class="symbol-btn-back-to-top">
        <i class="zmdi zmdi-chevron-up"></i>
      </span>
    </div>

    <!--===============================================================================================-->
    <script defer src="assets/customJS/sessionStatus.js"></script>
    <!--===============================================================================================-->
    <script src="assets/vendor/jquery/jquery-3.2.1.min.js"></script>
    <!--===============================================================================================-->
    <script src="assets/vendor/animsition/js/animsition.min.js"></script>
    <!--===============================================================================================-->
    <script src="assets/vendor/bootstrap/js/popper.js"></script>
    <script src="assets/vendor/bootstrap/js/bootstrap.min.js"></script>
    <!--===============================================================================================-->
    <script src="assets/vendor/select2/select2.min.js"></script>
    <script>
      $(".js-select2").each(function () {
        $(this).select2({
          minimumResultsForSearch: 20,
          dropdownParent: $(this).next(".dropDownSelect2"),
        });
      });
    </script>
    <!--===============================================================================================-->
    <script src="assets/vendor/MagnificPopup/jquery.magnific-popup.min.js"></script>
    <!--===============================================================================================-->
    <script src="assets/vendor/perfect-scrollbar/perfect-scrollbar.min.js"></script>
    <script>
      $(".js-pscroll").each(function () {
        $(this).css("position", "relative");
        $(this).css("overflow", "hidden");
        var ps = new PerfectScrollbar(this, {
          wheelSpeed: 1,
          scrollingThreshold: 1000,
          wheelPropagation: false,
        });

        $(window).on("resize", function () {
          ps.update();
        });
      });
    </script>

    <!--===============================================================================================-->
    <script src="assets/js/main.js"></script>
  <script defer src="assets/customJS/checkout.js"></script>
  </body>
</html>
