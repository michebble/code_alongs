console.log('toilet');

var bowl = document.querySelector('.bowl');


var poop = function() {
  console.log('poop poop')
  bowl.classList.add('poop')
}

bowl.addEventListener('click', poop);