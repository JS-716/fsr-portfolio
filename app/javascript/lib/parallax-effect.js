const parallaxEffect = () => {
  window.addEventListener('scroll', function () {
    const parallax = document.querySelector('.container-banner');
    let scrollPosition = window.pageYOffset;

    parallax.style.transform = 'translateY(' + scrollPosition * .8 + 'px)';
  });
};

export { parallaxEffect };