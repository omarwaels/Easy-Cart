var addToCartButton = document.querySelector("#addToCartButton");
function addToCartWhenLogin(
  id,
  productName,
  productPrice,
  productDescription,
  productImage,
  quantity,
  isLogin
) {
  var stockQ = quantity;
  // Retrieve existing cart items from local storage or initialize an empty array
  var nameProduct = $("#addToCartButton")
    .closest(".product-container")
    .find(".js-name-detail")
    .text();
  swal(nameProduct, "added to cart !", "success");
  var cartItems = JSON.parse(localStorage.getItem("cartItems")) || [];
  var existingProductIndex = cartItems.findIndex(function (p) {
    return p.productId === id;
  });
  //   // If the product already exists, update its quantity
  if (existingProductIndex !== -1) {
    if (cartItems[existingProductIndex].quantity < stockQ) {
      // disable add to cart button
      cartItems[existingProductIndex].quantity++;
    }
    if (cartItems[existingProductIndex].quantity >= stockQ) {
      disableAddToCArtBtn(addToCartButton);
      console.log("stockQ == cartItems[existingProductIndex].quantity");
    }
  } else {
    var product = {
      productId: id,
      productName: productName,
      productPrice: productPrice,
      productDescription: productDescription,
      productImage: productImage,
      quantity: 1,
    };
    cartItems.push(product);
    if (stockQ == 1) {
      // disable add to cart button
      disableAddToCArtBtn(addToCartButton);
      console.log("stockQ == 1");
      return;
    }
  }

  // Save the updated cart items array back to local storage
  localStorage.setItem("cartItems", JSON.stringify(cartItems));
  // this method from header.js
  updateCount();
  loadProductsToCart(); // this method from side-cart.jsp
  if (isLogin == true) addCartItemToDB(id);
}
// can add product itself instead of id

function addCartItemToDB(id) {
  var data = new URLSearchParams();
  data.append("productId", id);
  console.log("isnside db method js");
  fetch("front?controller=AddToCartController", {
    method: "POST",
    body: data,
    headers: {
      "Content-Type": "application/x-www-form-urlencoded",
    },
  })
    .then((response) => response.text())
    .then((data) => {
      var nameProduct = $("#addToCartButton")
        .closest(".product-container")
        .find(".js-name-detail")
        .text();
      swal(nameProduct, "is added to cart !", "success");
      console.log("done");
    })
    .catch((error) => {
      console.log(
        "An error occurred while adding the product to the cart:",
        error
      );
    });
}

function handleQuantityChange(selectElement, productId) {
  var selectedQuantity = selectElement.value;
  var data = new URLSearchParams();
  data.append("quantity", selectedQuantity);
  data.append("productId", productId);

  fetch("front?controller=updateQuantity", {
    method: "POST",
    body: data,
  })
    .then((response) => response.text())
    .catch((error) => {
      console.log("An error occurred while updating quantity:", error);
    });
}

function disableAddToCArtBtn() {
  if (addToCartButton) {
    console.log("disabled");
    // Set opacity to 0.6
    addToCartButton.disabled = true;
    addToCartButton.style.opacity = "0.6";
    // Set cursor to not-allowed
    addToCartButton.style.cursor = "not-allowed";
    var cartMessage = document.getElementById("cartMessage");
    cartMessage.innerText = "Sorry it is out of stock";
  }
}

//window.onload = function () {
//  //condition
//  disableAddToCArtBtn();
//};
