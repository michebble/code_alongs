// document.querySelector
// document.querySelectorAll
// textContent - sandwichs <h1>text Content</h1>
// value - toast <input type="value">


var num1Input = document.querySelector('.num1')
var num2Input = document.querySelector('.num2')
var resultSpan = document.querySelector('.result')
var calcBtn = document.querySelector('.calc-btn')



var calc = function() {
  // get the value from first input
  // get value from second input
  // add it
  // set text content of span to result

  resultSpan.textContent = Number(num1Input.value) + Number(num2Input.value)
}


// functions are just values/things/objects
// event, function

calcBtn.addEventListener('click', calc)

