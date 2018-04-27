$(function() {


      /*

      Cart Cookie System

      */


      if (document.cookie.split(';').filter(function (item) {
                  return item.indexOf('cart=') >= 0
            }).length) {
            console.log('The cookie "cart" exists')
      } else {
            document.cookie = "cart={}";
      };

      function getCookie(name) {
            var value = "; " + document.cookie;
            var parts = value.split("; " + name + "=");
            if (parts.length == 2) return parts.pop().split(";").shift().replace(/-/g, ",");
      };

      function updateCookie(sku, quantity) {
            if ($("#" + sku).val() == 0 || $("#" + sku).length == 0) {
                  let cookieJSON = JSON.parse(getCookie("cart"));

                  if (cookieJSON[sku] != 0 && cookieJSON[sku] != undefined) {
                        cookieJSON[sku] = cookieJSON[sku] + quantity;
                  } else {
                  cookieJSON[sku] = quantity;
                  };

                  let newCookieString = JSON.stringify(cookieJSON);
                  document.cookie = "cart=" + newCookieString.replace(/,/g, "-");

            } else {

                  let cookieJSON = JSON.parse(getCookie("cart"));

                  if (cookieJSON[sku + $("#" + sku).val()] != 0 && cookieJSON[sku + $("#" + sku).val()] != undefined) {
                        cookieJSON[sku + $("#" + sku).val()] = cookieJSON[sku + $("#" + sku).val()] + quantity;
                  } else {
                        cookieJSON[sku + $("#" + sku).val()] = quantity;
                  };

                  let newCookieString = JSON.stringify(cookieJSON);
                  document.cookie = "cart=" + newCookieString.replace(/,/g, "-");

                  
            };
            // if ($(this).siblings("select") && $(this).siblings("select") != 0) {
            //       console.log($(this).siblings("select").text("yoyoyoy"))
            // }
            
      };

      
      $(".addToCart").on("click", function() {updateCookie(this.dataset.productsku, 1)})
      // $(document).on("click", ".addToCart", function() {
      //       updateCookie(this.productId, 1)
      // });

      /* 
            Cart Cookie Test

      */
      // console.log("original: " + getCookie("cart"));
      // updateCookie("newkey", "newvalue");
      // console.log("new: " + getCookie("cart"));
      // deleteKeyFromCookie("okey");
      // console.log("deleted: " + getCookie("cart"));

});