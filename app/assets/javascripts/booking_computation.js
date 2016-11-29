$(document).ready(function(){

  $("#quantity").on("keyup", function(){
    var quantity = $(this).val();
    var weight = $("#weight").val();
    $(".amount").text(quantity);
    $(".amount-input").val(quantity);

    $(".wrapper-courier").each(function(i, item){
      var unit = $(item).find(".unit-price").text();
      var total = parseInt(quantity) * parseInt(weight) * parseFloat(unit);
      $(item).find(".total").text(total)
    });
  })

  $("#weight").on("keyup", function(){
    var quantity = $("#quantity").val();
    var weight = $(this).val();
    $(".weight").text(weight);
    $(".weight-input").val(weight);

    $(".wrapper-courier").each(function(i, item){
      var unit = $(item).find(".unit-price").text();
      var total = parseInt(quantity) * parseInt(weight) * parseFloat(unit);
      $(item).find(".total").text(total)
    });
  })
})
