
$(document).ready(function()
{

 
      if($('.bbb_viewed_slider').length)
      {
          var viewedSlider = $('.bbb_viewed_slider');

          viewedSlider.owlCarousel(
          {
              loop:true,
              margin:30,
              autoplay:true,
              autoplayTimeout:6000,
              nav:false,
              dots:false,
              responsive:
              {
                  0:{items:1},
                  575:{items:2},
                  768:{items:3},
                  991:{items:4},
                  1199:{items:6}
              }
          });

          if($('.bbb_viewed_prev').length)
          {
              var prev = $('.bbb_viewed_prev');
              prev.on('click', function()
              {
                  viewedSlider.trigger('prev.owl.carousel');
              });
          }

          if($('.bbb_viewed_next').length)
          {
              var next = $('.bbb_viewed_next');
              next.on('click', function()
              {
                  viewedSlider.trigger('next.owl.carousel');
              });
          }
      }


  });


$(document).ready(function() {
// executes when HTML-Document is loaded and DOM is ready

// breakpoint and up  
$(window).resize(function(){
 if ($(window).width() >= 980){	

     // when you hover a toggle show its dropdown menu
     $(".navbar .dropdown-toggle").hover(function () {
        $(this).parent().toggleClass("show");
        $(this).parent().find(".dropdown-menu").toggleClass("show"); 
      });

       // hide the menu when the mouse leaves the dropdown
     $( ".navbar .dropdown-menu" ).mouseleave(function() {
       $(this).removeClass("show");  
     });
 
   // do something here
 }	
});  
 
 

// document ready  
});

//carousel
/*
This time try to code js in a different way than I use to... more ordered and following this practices 
https://rmurphey.com/blog/2009/10/15/using-objects-to-organize-your-code

Please let me know what u think :D 

Thanks for watching!

Also original dribbble
https://dribbble.com/shots/2705517-boldybae
*/

var mySlider = {
  
  config : {
    
    slider : '.slider-content',
    activeSlide : '.slide.active',
    button: '.next-button',
    transition: 500,
    delay: function() {return this.transition;},
    navigation : '.control-nav'
    
  },
  
  init : function(config) {
        //$.extend(mySlider.config, config);
        this.createNav();
        $(mySlider.config.button).
            click(function() {
                mySlider.animateSlide($(this));
            });
    },
  
  getActiveSlide : function() {
    
    return $(mySlider.config.activeSlide);   
       
  },
  
  getNextSlide : function() {
     
     var nextSlide = mySlider.getActiveSlide().next();
      
     if ( nextSlide.length === 0 ){
      
       nextSlide = $(mySlider.config.slider).find('.slide').eq(0);   
     } 
    
    return nextSlide;
    
  },
  
  getNextSlideColorAndName : function() {
    
    var colorAndName = {};
    var nextSlidenext = mySlider.getNextSlide().next();
    var nextSlideColor = nextSlidenext.data('color');
    var nextSlideName = nextSlidenext.data('name');
    
    colorAndName.color = nextSlideColor;
    colorAndName.name = nextSlideName;
    
    if ( nextSlidenext.length === 0 ) {
      nextSlidenext = $(mySlider.config.slider).find('.slide').eq(0);  
      nextSlideColor = nextSlidenext.data('color');
      nextSlideName = nextSlidenext.data('name');
      
      colorAndName.color = nextSlideColor;
      colorAndName.name = nextSlideName;
    }
    
    return colorAndName;
  }, 
  
  createNav : function() {
    
    var totalSlides = $(mySlider.config.slider).find('.slide').length;
    var controlNav = $(mySlider.config.navigation).find('ul');
    var nav;
                        
    for( var i=0; i < totalSlides; i++ ){
        
        var active = "";
        if(i === 0){
          active = 'active';
        }
        
        controlNav.append('<li class="slider-nav nav-'+i+' '+active+' "></li>')

    }                      
                        
  },
  
  animateNav : function() {
    
    var activeNav  = $('li.active');
    var nextNav = activeNav.next();
    
    if(nextNav.length === 0){
      nextNav = $('.control-nav li').eq(0);
    }
    
    activeNav.removeClass('active');
    nextNav.addClass('active');
  },
  
  animateSlide : function(button) {
    
    var activeSlide  = mySlider.getActiveSlide();
    var nextSlide = mySlider.getNextSlide();
    var delay = mySlider.config.delay(); 
    var clipPath = $('.clip-svg');
    
    clipPath.css('transition-duration', mySlider.config.transition+'ms');
    button.css('pointer-events', 'none');
    nextSlide.css('z-index',10);
    button.css('background', mySlider.getNextSlideColorAndName().color);
    button.prev().find('.color').html(mySlider.getNextSlideColorAndName().name);
    nextSlide.addClass('active').css('opacity', 1); 
    
    setTimeout(function() {
      activeSlide.removeClass('active').css('opacity', 0);
    }, delay);
    
    setTimeout(function() {
      nextSlide.css('z-index','');
      button.css('pointer-events', 'auto');
    }, delay + 300);
    
    mySlider.animateNav();
    
  }
  
} 


$(document).ready(function() { mySlider.init(); });

//carousel
$(document).ready(function(){
  // invoke the carousel
      $('#myCarousel').carousel({
        interval:6000
      });
  
  // scroll slides on mouse scroll 
  $('#myCarousel').bind('mousewheel DOMMouseScroll', function(e){
  
          if(e.originalEvent.wheelDelta > 0 || e.originalEvent.detail < 0) {
              $(this).carousel('prev');
        
        
          }
          else{
              $(this).carousel('next');
        
          }
      });
  
  //scroll slides on swipe for touch enabled devices  
     $("#myCarousel").on("touchstart", function(event){
   
          var yClick = event.originalEvent.touches[0].pageY;
        $(this).one("touchmove", function(event){
  
          var yMove = event.originalEvent.touches[0].pageY;
          if( Math.floor(yClick - yMove) > 1 ){
              $(".carousel").carousel('next');
          }
          else if( Math.floor(yClick - yMove) < -1 ){
              $(".carousel").carousel('prev');
          }
      });
      $(".carousel").on("touchend", function(){
              $(this).off("touchmove");
      });
  });
      
  });
  //animated  carousel start
  $(document).ready(function(){
  
  //to add  start animation on load for first slide 
  $(function(){
      $.fn.extend({
        animateCss: function (animationName) {
          var animationEnd = 'webkitAnimationEnd mozAnimationEnd MSAnimationEnd oanimationend animationend';
          this.addClass('animated ' + animationName).one(animationEnd, function() {
            $(this).removeClass(animationName);
          });
        }
      });
         $('.item1.active img').animateCss('slideInDown');
         $('.item1.active h2').animateCss('zoomIn');
         $('.item1.active p').animateCss('fadeIn');
         
  });
    
  //to start animation on  mousescroll , click and swipe 
    $("#myCarousel").on('slide.bs.carousel', function () {
      $.fn.extend({
        animateCss: function (animationName) {
          var animationEnd = 'webkitAnimationEnd mozAnimationEnd MSAnimationEnd oanimationend animationend';
          this.addClass('animated ' + animationName).one(animationEnd, function() {
            $(this).removeClass(animationName);
          });
        }
      });
    
  // add animation type  from animate.css on the element which you want to animate
  
      $('.item1 img').animateCss('slideInDown');
      $('.item1 h2').animateCss('zoomIn');
      $('.item1 p').animateCss('fadeIn');
      
      $('.item2 img').animateCss('zoomIn');
      $('.item2 h2').animateCss('swing');
      $('.item2 p').animateCss('fadeIn');
      
      $('.item3 img').animateCss('fadeInLeft');
      $('.item3 h2').animateCss('fadeInDown');
      $('.item3 p').animateCss('fadeIn');
      });
  });
  