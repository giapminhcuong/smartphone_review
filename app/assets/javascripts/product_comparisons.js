// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.

var load_select2 = function() {
        $('.compared-product').select2({
            ajax: {
              url: 'http://localhost:3000/products_json',
              dataType: 'json'
              // Additional AJAX parameters go here; see the end of this chapter for the full code of this example
            }
        });
}

$(document).ready(load_select2);

$(document).ready(function() {
    $(".add-product-button").on("click", function() {
        var index = $('#body-products-chooser').data('number-of-products');
        index++;
        $('#body-products-chooser').data('number-of-products', index);
        $(".products-chooser").append(
           `
           <div id="product-container-${index}">
                <label for="box-${index}">Product ${index} </label>
                <select name="products[${index}]" id="box-${index}" class="compared-product"> </select>
            </div>
           `
        );
        load_select2();
    })
});