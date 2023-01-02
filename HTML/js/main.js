(function ($) {
    "use strict";
    
    // Dropdown on mouse hover
    $(document).ready(function () {
        function toggleNavbarMethod() {
            if ($(window).width() > 992) {
                $('.navbar .dropdown').on('mouseover', function () {
                    $('.dropdown-toggle', this).trigger('click');
                }).on('mouseout', function () {
                    $('.dropdown-toggle', this).trigger('click').blur();
                });
            } else {
                $('.navbar .dropdown').off('mouseover').off('mouseout');
            }
        }
        toggleNavbarMethod();
        $(window).resize(toggleNavbarMethod);
    });
    
    
    // Back to top button
    $(window).scroll(function () {
        if ($(this).scrollTop() > 100) {
            $('.back-to-top').fadeIn('slow');
        } else {
            $('.back-to-top').fadeOut('slow');
        }
    });
    $('.back-to-top').click(function () {
        $('html, body').animate({scrollTop: 0}, 1500, 'easeInOutExpo');
        return false;
    });


    // Date and time picker
    $('#date').datetimepicker({
        format: 'L'
    });
    $('#time').datetimepicker({
        format: 'LT'
    });


    // Testimonials carousel
    $(".testimonial-carousel").owlCarousel({
        center: true,
        autoplay: true,
        smartSpeed: 2000,
        dots: true,
        loop: true,
        responsive: {
            0:{
                items:1
            },
            576:{
                items:1
            },
            768:{
                items:2
            },
            992:{
                items:3
            }
        }
    });
    $( ".input" ).focusin(function() {
        $( this ).find( "span" ).animate({"opacity":"0"}, 200);
      });
      
      $( ".input" ).focusout(function() {
        $( this ).find( "span" ).animate({"opacity":"1"}, 300);
      });
      
      $(".login").submit(function(){
        $(this).find(".submit i").removeAttr('class').addClass("fa fa-check").css({"color":"#fff"});
        $(".submit").css({"background":"#2ecc71", "border-color":"#2ecc71"});
        $(".feedback").show().animate({"opacity":"1", "bottom":"-80px"}, 400);
        $("input").css({"border-color":"#2ecc71"});
        return false;
      });
    
})(jQuery);

let btn=document.querySelector("#loginbtn");
let loginwindow=document.querySelector("#loginpg");
let bodyhide = document.querySelector("#bodyhide");
let close = document.querySelector("#sign_In");
btn.addEventListener("click", function(){

    bodyhide.style.display="block";
    bodyhide.style.height=document.body.clientHeight+"px";
    document.body.style.overflow="hidden";
    loginwindow.showModal();
})
document.addEventListener("click", function(e){
    if(e.target == loginwindow){
        loginwindow.close();
        bodyhide.style.display="none";
        document.body.style.overflow="visible";
    }
},true)