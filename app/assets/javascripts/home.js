$(".hamburger-menu").hide();
  //hamburger Functionality
  $(".hamburger").on("click", function(e){
    e.preventDefault();
    $(".hamburger-menu").slideToggle(400);
  })