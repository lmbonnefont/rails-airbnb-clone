function autocomplete() {
  document.addEventListener("DOMContentLoaded", function() {
    var productAddress = document.getElementById('product_address');
    console.log(productAddress)
    if (productAddress) {
      var autocomplete = new google.maps.places.Autocomplete(productAddress, { types: [ 'geocode' ] });
      google.maps.event.addDomListener(productAddress, 'keydown', function(e) {
        if (e.key === "Enter") {
          e.preventDefault(); // Do not submit the form on Enter.
        }
      });
    }
  });
}

// function autocomplete2() {
//   document.addEventListener("DOMContentLoaded", function() {
//     var productAddress = document.getElementById('product_address');
//     console.log(productAddress)
//     if (productAddress) {
//       var autocomplete = new google.maps.places.Autocomplete(productAddress, { types: [ 'geocode' ] });
//       google.maps.event.addDomListener(productAddress, 'keydown', function(e) {
//         if (e.key === "Enter") {
//           e.preventDefault(); // Do not submit the form on Enter.
//         }
//       });
//     }
//   });
// }

export { autocomplete };
export { autocomplete2 };