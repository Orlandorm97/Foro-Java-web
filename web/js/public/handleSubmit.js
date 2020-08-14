function handleSubmit(event) {
  event.preventDefault();
  const title = document.getElementById('signup-form__title');
  const input = document.querySelector('.signup-form__input');
  const button = document.querySelector('.signup-form__button');
  const form = document.getElementById('signup-form');
  if (!event.target.email.value) {
      title.innerText = 'Email cannot be empty. Try again!'
      return false;
  }
  fetch(event.srcElement.action, {
      mode: 'no-cors', 
      headers: {
          'Accept': event.target.encoding,
          'Content-Type': event.target.encoding
      },
      method: event.target.method,
      body: JSON.stringify({email: event.target.email.value})
  }).then(
      () => {
        const subtitle = document.createElement('P');
        subtitle.innerText = 'You have been successfully subscribed to our pilot program.';
        subtitle.classList.add('signup-form__subtitle');
        title.style.color = '#B55EF7';
        title.innerHTML = '<b>Congrats!</b>';
        button.style.display = 'none';
        input.style.display = 'none';
        form.appendChild(subtitle);
      },
      () => {title.innerHTML = '<b>Something went wrong.</b> Please, try again.'}
  )
}
const form = document.getElementById('signup-form');
form.addEventListener('submit', handleSubmit)