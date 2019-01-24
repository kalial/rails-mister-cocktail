import Typed from 'typed.js';

function loadDynamicBannerText() {
  new Typed('#banner-typed-text', {
    strings: ["Gin Tonic", "Moscow Mule", "Gin Basil Smash", "Bali Belly Burster", "Vodka Soda", "Bloody Marry"],
    typeSpeed: 120,
    loop: true
  });
}

export { loadDynamicBannerText };
