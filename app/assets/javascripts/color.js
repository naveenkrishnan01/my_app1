$(document).ready(function() {
$("#contact-content").hover(function(event){
    $(this).css('color', 'red');
}, function(){ $(this).css('color', 'black');
});
});

$(document).ready(function() {
   $("#flip").click(function(){
    $("#panel").slideToggle("slow");
   });
   });