gsap.registerPlugin(ScrollTrigger);
ScrollTrigger.saveStyles(".container-hero div");
ScrollTrigger.matchMedia({
  // desktop
  "(min-width: 300px)": function () {
    // setup animations and ScrollTriggers for screens 800px wide or greater (desktop) here...
    // These ScrollTriggers will be reverted/killed when the media query doesn't match anymore.
    // Timeline for fading in and fading out the text

    var targets = document.querySelectorAll(".container-hero div");

    targets.forEach((target) => {
      const tl = gsap
        .timeline({
          defaults: { duration: 1 },
          scrollTrigger: {
            trigger: target,
            markers: true,
            scrub: true,
            start: "center 50%",
            end: "bottom top",
            pin: true
          }
        })
        .fromTo(target, { y: 25 }, { y: -25 })
        .from(target, { opacity: 0, duration: 0.2 }, 0)
        .to(target, { opacity: 0, duration: 0.2 }, 0.8);
    });
  },
});
//For selecting elements
const intro = document.querySelector(".intro");
const video = intro.querySelector("video");
const text = intro.querySelector("h1");
//END SECTION
const section = document.querySelector("section");
const end = section.querySelector("h1");
//SCROLLMAGIC
const controller = new ScrollMagic.Controller();

//Scenes
let scene = new ScrollMagic.Scene({
  duration: 15000,
  triggerElement: intro,
  triggerHook: 0
})
  .setPin(intro)
  .addTo(controller);

//Text Animation 1
const textAnim = TweenMax.fromTo(text, 3, { opacity: 1 }, { opacity: 0 });

let scene2 = new ScrollMagic.Scene({
  duration: 2000,
  triggerElement: intro,
  triggerHook: 0
})
  .setTween(textAnim)
  .addTo(controller);

//Video Animation
let accelamount = 0.1;
let scrollpos = 0;
let delay = 0;

scene.on("update", e => {
  scrollpos = e.scrollPos / 1000;
});

setInterval(() => {
  delay += (scrollpos - delay) * accelamount;
  console.log(scrollpos, delay);

  video.currentTime = delay;
}, 33.2);


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
    Navigation - Hide mobile menu after clicking on a link
  -------------------------------------------------------------------------------*/

  $('.navbar-collapse a').click(function(){
    $(".navbar-collapse").collapse('hide');
});


$(window).scroll(function() {
if ($(".navbar").offset().top > 50) {
    $(".navbar-fixed-top").addClass("top-nav-collapse");
} else {
    $(".navbar-fixed-top").removeClass("top-nav-collapse");
}
});

//Get the button:
mybutton = document.getElementById("myBtn");

// When the user scrolls down 20px from the top of the document, show the button
window.onscroll = function() {scrollFunction()};

function scrollFunction() {
  if (document.body.scrollTop > 100 || document.documentElement.scrollTop > 100) {
    mybutton.style.visibility = "visible";
  } else {
    mybutton.style.visibility = "hidden";
  }
}

// When the user clicks on the button, scroll to the top of the document
function topFunction() {
  document.body.scrollTop = 0; // For Safari
  document.documentElement.scrollTop = 0; // For Chrome, Firefox, IE and Opera
}