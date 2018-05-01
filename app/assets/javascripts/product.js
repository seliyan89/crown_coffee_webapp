$(function () {


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

      function updateCookie(thisThing, quantity) {
            // if no variations are found
            if (thisThing.parent().not(":has(input)").length > 0) {
                  let cookieJSON = JSON.parse(getCookie("cart"));
                  let sku = thisThing.attr("data-productsku");

                  //if the cookie already exists
                  if (cookieJSON[sku] != 0 && cookieJSON[sku] != undefined) {
                        cookieJSON[sku] = cookieJSON[sku] + quantity;
                  } else {
                        cookieJSON[sku] = quantity;
                  };

                  let newCookieString = JSON.stringify(cookieJSON);
                  document.cookie = "cart=" + newCookieString.replace(/,/g, "-");
            } else {
                  let sku = thisThing.attr("data-productsku");
                  let cookieJSON = JSON.parse(getCookie("cart"));

                  let variationArray = [];
                  //if variations exist, loop through and create a new cookie
                  thisThing.siblings("input").each(function () {
                        if ($(this).is(':checked')) {
                              variationArray.push($(this).val());
                        };
                  });


                  let variationString = variationArray.join("");

                  if (cookieJSON[sku + variationString] != 0 && cookieJSON[sku + variationString] != undefined) {
                        cookieJSON[sku + variationString] = cookieJSON[sku + variationString] + quantity;
                  } else {
                        cookieJSON[sku + variationString] = quantity;
                  }

                  let newCookieString = JSON.stringify(cookieJSON);
                  document.cookie = "cart=" + newCookieString.replace(/,/g, "-");
            };

      };


      $(".addToCart").on("click", function () {
            updateCookie($(this), 1)
      });

});