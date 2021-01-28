const burgerMenu = () => {
  const menuIcon = document.querySelector('svg.ham');
  const navbar = document.querySelector('.main-navbar');

  menuIcon.addEventListener( 'click', (event) => {
    if (event.currentTarget.classList[3] === "active" ) {
      navbar.classList.remove("hidden-navbar");
      navbar.classList.add("visible-navbar");
    } else {
      navbar.classList.remove("visible-navbar");
      navbar.classList.add("hidden-navbar");
    }
  });
};

export { burgerMenu };