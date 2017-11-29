import Typed from 'typed.js';

function loadDynamicBannerText() {
  new Typed('#banner-typed-text', {
    strings: ["Sauver les meubles", "Aider vos prochains dans le besoin"],
    typeSpeed: 60,
    loop: true,
  });
}

export { loadDynamicBannerText };
