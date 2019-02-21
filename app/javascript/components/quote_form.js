const buttonSuivant = document.querySelector('.button-suivant');

buttonSuivant.addEventListener('click', (event) => {
  const secondPage = document.querySelector('.second-page');
  const firstPage = document.querySelector('.first-page');
  secondPage.classList.remove("second-page");
  secondPage.classList.add("first-page");
  firstPage.classList.remove("first-page");
  firstPage.classList.add("second-page");
});

const buttonPrecedent = document.querySelector('.button-precedent');

buttonPrecedent.addEventListener('click', (event) => {
  const secondPage = document.querySelector('.second-page');
  const firstPage = document.querySelector('.first-page');
  secondPage.classList.remove("second-page");
  secondPage.classList.add("first-page");
  firstPage.classList.remove("first-page");
  firstPage.classList.add("second-page");
});
