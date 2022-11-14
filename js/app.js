//For selecting elements
const intro = document.querySelector(".intro");
const video = intro.querySelector("video");
const text = intro.querySelector("h1");
//END SECTION
//const section = document.querySelector("section");
//const end = section.querySelector("h1");

//SCROLLMAGIC
const controller = new ScrollMagic.Controller();

//Scenes
const scene1 = new ScrollMagic.Scene({
  duration: 6000,
  triggerElement: intro,
  triggerHook: 0,
})
  .addIndicators()
  .setPin(intro,)
  .addTo(controller);

//Video Animation
let accelamount = 0.1;
let scrollpos = 0;
let delay = 0;

scene1.on("update", e1 => {
  scrollpos = e1.scrollPos / 1000;
});

setInterval(() => {
  delay += (scrollpos - delay) * accelamount;
  console.log(scrollpos, delay);

  video.currentTime = delay;
}, 33.3);

//Text Animation
const textAnim = TweenMax.fromTo(text, 1, { opacity: 1 }, { opacity: 0 });

const scene2 = new ScrollMagic.Scene({
  duration: 1500,
  triggerElement: intro,
  triggerHook: 0,
})
  .setTween(textAnim)
  .addTo(controller);
//Need to stop both animations from playing at the same time

