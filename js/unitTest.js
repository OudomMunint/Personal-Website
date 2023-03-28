describe('ScrollMagic scenes', () => {
    it('should create and add scene1 to controller', () => {
      // Create a new div element for the intro section
      const introDiv = document.createElement('div');
      introDiv.classList.add('intro');
  
      // Create a new video element
      const video = document.createElement('video');
      introDiv.appendChild(video);
  
      // Create a new h1 element for the text
      const text = document.createElement('h1');
      introDiv.appendChild(text);
  
      // Add the intro section to the document body
      document.body.appendChild(introDiv);
  
      // Create a new ScrollMagic controller
      const controller = new ScrollMagic.Controller();
  
      // Create a new ScrollMagic scene and add it to the controller
      const scene1 = new ScrollMagic.Scene({
        duration: 6000,
        triggerElement: introDiv,
        triggerHook: 0,
      })
        .setPin(introDiv)
        .addTo(controller);
  
      // Check that the scene1 object is created and added to the controller
      expect(scene1).toBeDefined();
      expect(controller.info('scenes').length).toBe(1);
      expect(controller.info('scenes')[0]).toBe(scene1);
    });
  });