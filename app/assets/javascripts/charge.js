$(function() {

      function resetCart() {

            document.cookie = "cart={}";
      };

      $(".paidForStuff").on("click", function() {resetCart();});

});