$(function() {

      function getCookie(name) {
            var value = "; " + document.cookie;
            var parts = value.split("; " + name + "=");
            if (parts.length == 2) return parts.pop().split(";").shift().replace(/-/g, ",");
      };


      function deleteKeyFromCookie(keyname) {
            let cookieJSON = JSON.parse(getCookie("cart"));
            delete cookieJSON[keyname];
            let newCookieString = JSON.stringify(cookieJSON);
            document.cookie = "cart=" + newCookieString.replace(/,/g, "-");

      };

      $(".deleteFromCart").on("click", function() {deleteKeyFromCookie(this.dataset.productsku); location.reload();})
});

