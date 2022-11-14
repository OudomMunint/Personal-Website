
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

/*-------------------------------------------------------------------------------
    Skills canvas section
  -------------------------------------------------------------------------------*/

          
const DOT_RADIUS = 24; // Radius of the dots
const SCALE = 0.85; // Scale of svgs
const MIN_SPEED = 0.0007;
const MOUSE_SPEED = 0.01;

// TRANSLATE SVG ELEMENTS TO Path2D

let svgs = document.getElementById("svg-container");
let COLORS = Array(svgs.children.length);
let PATHS = [...svgs.children].map((svg,i)=>{
  if(svg.children[0].tagName == "g"){
    svg = svg.children[0];
    COLORS[i] = Array(svg.children.length);
    COLORS[i][0] = svg.getAttribute("fill");
  }else{

    COLORS[i] = Array(svg.children.length);
  }
  return [...svg.children].map((e,j)=>{
    let c = e.getAttribute("fill");
    if(c !== null){
      console.log(c);
      COLORS[i][j] = c;
    }else{
      COLORS[i][j] = COLORS[i][0] ? COLORS[i][0] : "#FFF";
    }
    return new Path2D(e.getAttribute("d"));});

});
const SAMPLES = PATHS.length;

// BEGIN CANVAS RENDERING
var canvas = document.getElementById("myCanvas");
var ctx = canvas.getContext("2d");

let width = canvas.offsetWidth;
let height = canvas.offsetHeight;



let PERSPECTIVE; // The field of view of our 3D scene
let PROJECTION_CENTER_X; // x center of the canvas
let PROJECTION_CENTER_Y; // y center of the canvas
let GLOBE_RADIUS; // Radius of the globe based on the canvas width


function onResize() {
  PERSPECTIVE = width * 0.8;
  PROJECTION_CENTER_X = width / 2;
  PROJECTION_CENTER_Y = height / 2;
  GLOBE_RADIUS = width / 4;
  // We need to define the dimensions of the canvas to our canvas element
  // Javascript doesn't know the computed dimensions from CSS so we need to do it manually
  width = canvas.offsetWidth;
  height = canvas.offsetHeight;

  // If the screen device has a pixel ratio over 1
  // We render the canvas twice bigger to make it sharper (e.g. Retina iPhone)
  if (window.devicePixelRatio > 1) {
    canvas.width = canvas.clientWidth * 2;
    canvas.height = canvas.clientHeight * 2;
    ctx.scale(2, 2);
  } else {
    canvas.width = width;
    canvas.height = height;
  }
}
window.addEventListener('resize', onResize);
onResize();

let PHI = Math.PI * (3.0 - Math.sqrt(5.0));
let VX = MIN_SPEED; // outward axis (+ is clockwise)
let VY = MIN_SPEED; //vertical axis (+ is counterclockwise)
let VZ = MIN_SPEED; //horizontal axis (+ is roll forward)
let mouse_x = 0;
let mouse_y = 0;
let mouse_moving = false;


canvas.addEventListener('mousemove', e=>{
  mouse_moving = true;
  mouse_x = e.offsetX - width / 2;
  mouse_y = e.offsetY - height / 2;
  VY = MOUSE_SPEED * mouse_x / width;
  VZ = MOUSE_SPEED * mouse_y / height;
  
});
canvas.addEventListener("mouseout", function (event) {
    mouse_moving = false;
    let theta = -1 * Math.atan2(mouse_y - height/2, mouse_x - width/2) + Math.PI * 0.5;
    console.log(theta);
    let setSpeedZ = Math.cos(theta) * 0.1;
    let setSpeedY = Math.sin(theta) * 0.1;
    function slowDownSpin(){
      if(mouse_moving){
        return;
      }
      VZ /= 1.3;
      VY /= 1.3;
      if(Math.abs(VZ) <= MIN_SPEED){
        VZ = Math.sign(VZ) * MIN_SPEED;
      }
      if(Math.abs(VY) <= MIN_SPEED){
        VY = Math.sign(VY) * MIN_SPEED;
      }
      if((VZ == MIN_SPEED) || (VY == MIN_SPEED)){
        return;
      }
      setTimeout(slowDownSpin, 200);
    }
    slowDownSpin();

}, false);
  

class Dot {
  constructor(i, paths) {
    this.colors = COLORS[i];
    this.y = 1 - (i / (SAMPLES - 1)) * 2;
    let radius = Math.sqrt(1 - this.y * this.y);
    this.theta = PHI * i;
    this.x = Math.cos(this.theta) * radius;
    this.z = Math.sin(this.theta) * radius;
    this.paths = paths;
    this.xProjected = 0; // x coordinate on the 2D world
    this.yProjected = 0; // y coordinate on the 2D world
    this.scaleProjected = 0; // Scale of the element on the 2D world (further = smaller)
    
  }
  rotate() {

    let x1 = this.x * Math.cos(VX) - this.y * Math.sin(VX);
    let y1 = this.x * Math.sin(VX) + this.y * Math.cos(VX);

    let x2 = x1 * Math.cos(VY) - this.z * Math.sin(VY);
    let z2 = x1 * Math.sin(VY) + this.z * Math.cos(VY);

    let y3 = y1 * Math.cos(VZ) - z2 * Math.sin(VZ);
    let z3 = y1 * Math.sin(VZ) + z2 * Math.cos(VZ);
    this.x = x2;
    this.y = y3;
    this.z = z3;

  }
  // Project our element from its 3D world to the 2D canvas
  project() {
    this.rotate();
    // The scaleProjected will store the scale of the element based on its distance from the 'camera'
    this.scaleProjected = PERSPECTIVE / (PERSPECTIVE + this.z * GLOBE_RADIUS);
    // The xProjected is the x position on the 2D world
    this.xProjected = (this.x * GLOBE_RADIUS * this.scaleProjected) + PROJECTION_CENTER_X  - DOT_RADIUS * this.scaleProjected;
    // The yProjected is the y position on the 2D world
    this.yProjected = (this.y * GLOBE_RADIUS * this.scaleProjected) + PROJECTION_CENTER_Y  - DOT_RADIUS * this.scaleProjected;
  }
  // Draw the dot on the canvas
  draw() {
    // We first calculate the projected values of our dot
    this.project();
    // We define the opacity of our element based on its distance

    // Uncomment for circle
    // ctx.beginPath();
    // ctx.fillStyle="#fff";
    // ctx.arc(this.xProjected, this.yProjected, DOT_RADIUS * this.scaleProjected, 0, Math.PI * 2);
    // ctx.fill();
    
    // save the canvas origin
    ctx.save();
    
    ctx.globalAlpha = Math.abs(1 - this.z * 3 * GLOBE_RADIUS / width); // items in the back will appear more translucent than those in front
    ctx.beginPath();
    ctx.translate(this.xProjected, this.yProjected); // move to the projected coordinates
    ctx.scale(this.scaleProjected * SCALE * width / 1920, this.scaleProjected * SCALE * width / 1920); // scale smaller if farther and bigger if closer

    this.paths.forEach((path,i) => {
      ctx.fillStyle = this.colors[i];
      // Uncomment for one color;
      // ctx.fillStyle= "#FFF";
      ctx.fill(path);
    });
    
    // restore canvas origin
    ctx.restore();

    
  }
}
const dots = PATHS.map((e,i)=>new Dot(i, e));

function render(){
  ctx.fillStyle = "black";
  ctx.fillRect(0,0,width, height);
    // Sort dots array based on their projected size
  dots.sort((dot1, dot2) => {
    return dot1.scaleProjected - dot2.scaleProjected;
  });

  // Loop through the dots array and draw every dot
  dots.forEach(dot => {
    dot.draw();
  });
  window.requestAnimationFrame(render);
}
render();
  