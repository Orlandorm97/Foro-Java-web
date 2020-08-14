import { tns } from "tiny-slider/src/tiny-slider";
(() => {
  const companiesSlider = tns({
    container: '.projects-using__companies',
    items: 4,
    autoplay: true,
    mouseDrag: true,
    slideBy: "page",
    swipeAngle: false,
    controls: false,
    autoplayButtonOutput: false,
    responsive: {
      '1024': {
        items: 5,
      },
      '890': {
        items: 4,
      },
      '500': {
        items: 3
      }
    }
  });
})();
