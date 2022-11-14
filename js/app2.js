//For selecting elements
const intro2 = document.querySelector(".intro2");
const video2 = intro2.querySelector("video");
const text2 = intro2.querySelector("h1");
//END SECTION
const section2 = document.querySelector("section2");
const end2 = section2.querySelector("h1");

//SCROLLMAGIC
const controller2 = new ScrollMagic.Controller();
//Scenes
const scene3 = new ScrollMagic.Scene({
    duration: 6000,
    triggerElement: intro2,
    triggerHook: 0,
  })
    .addIndicators()
    .setPin(intro2,)
    .addTo(controller2);
  
  //Video Animation
  let accelamount2 = 0.1;
  let scrollpos2 = 0;
  let delay2 = 0;
  
  scene3.on("update", e2 => {
    scrollpos2 = e2.scrollPos / 1000;
  });
  
  setInterval(() => {
    delay2 += (scrollpos2 - delay2) * accelamount2;
    console.log(scrollpos2, delay2);
  
    video2.currentTime = delay2;
  }, 33.3);
  //Text Animation 2
const textAnim2 = TweenMax.fromTo(text2, 1, { opacity: 1 }, { opacity: 0 });

const scene4 = new ScrollMagic.Scene({
  duration: 1500,
  triggerElement: intro2,
  triggerHook: 0
})
  .setTween(textAnim2)
  .addTo(controller2);