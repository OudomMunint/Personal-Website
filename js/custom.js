
  /*-------------------------------------------------------------------------------
    PRE LOADER
  -------------------------------------------------------------------------------*/

  $(window).load(function(){
    $('.preloader').fadeOut(1000); // set duration in brackets    
  });



  /* HTML document is loaded. DOM is ready. 
  -------------------------------------------*/

  $(document).ready(function() {


  /*-------------------------------------------------------------------------------
    Navigation - Hide mobile menu after clicking on a link
  -------------------------------------------------------------------------------*/

    $('.navbar-collapse a').click(function(){
        $(".navbar-collapse").collapse('hide');
    });


    /*-------------------------------------------------------------------------------
    Navigation - Menu solid transition when scrolled down
  -------------------------------------------------------------------------------*/

    $(window).scroll(function() {
    if ($(".navbar").offset().top > 0) {
        $(".navbar-fixed-top").addClass("top-nav-collapse");
        $(".navbar-fixed-top").removeClass("navbar-transparent");
    } else {
        $(".navbar-fixed-top").removeClass("top-nav-collapse");
        $(".navbar-fixed-top").addClass("navbar-transparent");
    }
  });



  /*-------------------------------------------------------------------------------
    jQuery Parallax
  -------------------------------------------------------------------------------*/

    function initParallax() {
    $('#home').parallax("100%", 0.1);
    $('#about').parallax("100%", 0.3);
    $('#service').parallax("100%", 0.2);
    $('#experience').parallax("100%", 0.3);
    $('#education').parallax("100%", 0.1);
    $('#quotes').parallax("100%", 0.3);
    $('#contact').parallax("100%", 0.1);
    $('footer').parallax("100%", 0.2);

  }
  initParallax();



  /*-------------------------------------------------------------------------------
    smoothScroll js
  -------------------------------------------------------------------------------*/
  
    /* $(function() {
        $('.custom-navbar a, #home a').bind('click', function(event) {
            var $anchor = $(this);
            $('html, body').stop().animate({
                scrollTop: $($anchor.attr('href')).offset().top - 49
            }, 1000);
            event.preventDefault();
        });
    }); */
  


  /*-------------------------------------------------------------------------------
    wow js - Animation js
  -------------------------------------------------------------------------------*/

  new WOW({ mobile: false }).init();


  });
  
  $(function()
  {
      new WOW().init();
      $(".rotate").textrotator();
  })

  /*-------------------------------------------------------------------------------
    Scrolling opacity animation
  -------------------------------------------------------------------------------*/

  function showIt() {
    const toBeShown = document.querySelectorAll(".booger"); // consider adding :not(.scrolled) to selector to reduce the number of iterations if you don't want to support scrolling up
  
    // consider taking this outside of the loop and resetting it on window resize to optimize the loop
    const halfScreen = window.innerHeight / 2.4;
  
    toBeShown.forEach((item, i) => {
      const scrolled = window.scrollY + window.innerHeight; // - (item.offsetHeight/2);
  
      if (item.offsetTop - window.scrollY < halfScreen) {
        item.classList.add("scrolled");
      } else {
        item.classList.remove("scrolled");
      }
    });
  }
  
  window.addEventListener("scroll", showIt);

  /*-------------------------------------------------------------------------------
    Timeline section
  -------------------------------------------------------------------------------*/
  (function(){
    // Vertical Timeline - by CodyHouse.co
    function VerticalTimeline( element ) {
      this.element = element;
      this.blocks = this.element.getElementsByClassName("cd-timeline__block");
      this.images = this.element.getElementsByClassName("cd-timeline__img");
      this.contents = this.element.getElementsByClassName("cd-timeline__content");
      this.offset = 0.8;
      this.hideBlocks();
    };
  
    VerticalTimeline.prototype.hideBlocks = function() {
      if ( !"classList" in document.documentElement ) {
        return; // no animation on older browsers
      }
      //hide timeline blocks which are outside the viewport
      var self = this;
      for( var i = 0; i < this.blocks.length; i++) {
        (function(i){
          if( self.blocks[i].getBoundingClientRect().top > window.innerHeight*self.offset ) {
            self.images[i].classList.add("cd-timeline__img--hidden"); 
            self.contents[i].classList.add("cd-timeline__content--hidden"); 
          }
        })(i);
      }
    };
  
    VerticalTimeline.prototype.showBlocks = function() {
      if ( ! "classList" in document.documentElement ) {
        return;
      }
      var self = this;
      for( var i = 0; i < this.blocks.length; i++) {
        (function(i){
          if( self.contents[i].classList.contains("cd-timeline__content--hidden") && self.blocks[i].getBoundingClientRect().top <= window.innerHeight*self.offset ) {
            // add bounce-in animation
            self.images[i].classList.add("cd-timeline__img--bounce-in");
            self.contents[i].classList.add("cd-timeline__content--bounce-in");
            self.images[i].classList.remove("cd-timeline__img--hidden");
            self.contents[i].classList.remove("cd-timeline__content--hidden");
          }
        })(i);
      }
    };
  
    var verticalTimelines = document.getElementsByClassName("js-cd-timeline"),
      verticalTimelinesArray = [],
      scrolling = false;
    if( verticalTimelines.length > 0 ) {
      for( var i = 0; i < verticalTimelines.length; i++) {
        (function(i){
          verticalTimelinesArray.push(new VerticalTimeline(verticalTimelines[i]));
        })(i);
      }
  
      //show timeline blocks on scrolling
      window.addEventListener("scroll", function(event) {
        if( !scrolling ) {
          scrolling = true;
          (!window.requestAnimationFrame) ? setTimeout(checkTimelineScroll, 250) : window.requestAnimationFrame(checkTimelineScroll);
        }
      });
    }
  
    function checkTimelineScroll() {
      verticalTimelinesArray.forEach(function(timeline){
        timeline.showBlocks();
      });
      scrolling = false;
    };
  })();

/*-------------------------------------------------------------------------------
    Roating word animation (apple style)
  -------------------------------------------------------------------------------*/
  setInterval(function () {
    let show = document.querySelector(".mask span[data-show]");
    let next = show.nextElementSibling || document.querySelector(".mask span:first-child");
    let up = document.querySelector(".mask span[data-up]");
  
    if (up) {
      up.removeAttribute("data-up");
    }
  
    show.removeAttribute("data-show");
    show.setAttribute("data-up", " ");
  
    next.setAttribute("data-show", " ");
  }, 1500);


/*-------------------------------------------------------------------------------
    Async typing section
  -------------------------------------------------------------------------------*/

  /* async function init () {
    const node = document.querySelector("#type-text")
    
    await sleep(1000)
    node.innerText = ""
    await node.type('')
    
    while (true) {
      await node.type('Welcome to my website!')
      await sleep(2000)
      await node.delete('Welcome to my website!')
      await node.type('Frontend developer')
      await sleep(2000)
      await node.delete('Unreal Engine developer')
      await node.type('.Net MAUI developer')
      await sleep(2000)
      await node.delete('Technoloy Enthusiast')
      await node.type('Unreal Engine Developer')
      await sleep(2000)
      await node.delete('Unreal Engine developer')
      await node.type('Technology Enthusiast')
      await sleep(2000)
      await node.delete('Technology Enthusiast')
    }
  } */
  
  
  // Source code 🚩
  
  /* const sleep = time => new Promise(resolve => setTimeout(resolve, time))
  
  class TypeAsync extends HTMLSpanElement {
    get typeInterval () {
      const randomMs = 100 * Math.random()
      return randomMs < 50 ? 10 : randomMs
    }
    
    async type (text) {
      for (let character of text) {
        this.innerText += character
        await sleep(this.typeInterval)
      }
    }
    
    async delete (text) {
      for (let character of text) {
        this.innerText = this.innerText.slice(0, this.innerText.length -1)
        await sleep(this.typeInterval)
      }
    }
  }
  
  customElements.define('type-async', TypeAsync, { extends: 'span' })
  
  
  init() */

//Scrolling opacity
function showIt() {
  const toBeShown = document.querySelectorAll(".booger"); // consider adding :not(.scrolled) to selector to reduce the number of iterations if you don't want to support scrolling up

  // consider taking this outside of the loop and resetting it on window resize to optimize the loop
  const halfScreen = window.innerHeight / 2.4;

  toBeShown.forEach((item, i) => {
    const scrolled = window.scrollY + window.innerHeight; // - (item.offsetHeight/2);

    if (item.offsetTop - window.scrollY < halfScreen) {
      item.classList.add("scrolled");
    } else {
      item.classList.remove("scrolled");
    }
  });
}

window.addEventListener("scroll", showIt)

/*-------------------------------------------------------------------------------
    Back to top button
  -------------------------------------------------------------------------------*/
  // ===== Scroll to Top ==== 
$(window).scroll(function() {
  if ($(this).scrollTop() >= 50) {        // If page is scrolled more than 50px
      $('#return-to-top').fadeIn(200);    // Fade in the arrow
  } else {
      $('#return-to-top').fadeOut(200);   // Else fade out the arrow
  }
});
$('#return-to-top').click(function() {      // When arrow is clicked
  $('body,html').animate({
      scrollTop : 0                       // Scroll to top of body
  }, 500);
});