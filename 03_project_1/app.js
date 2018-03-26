console.log('todo')

//find first list item


var listItems = document.querySelectorAll('li');
var completedItemsSpan = document.querySelector('span');

//add event handler for clicks
// call back function - signature


var markAsDone = function(event) {
  // if (!event.target.classList.contains('done')) {
  //   event.target.classList.add('done');
  // } else {
  //   event.target.classList.remove('done');
  // }
  event.target.classList.toggle("done")
  completedItemsSpan.textContent = document.querySelectorAll('.done').length;
}



// listItems.forEach(function(item) {
//   item.addEventListener('click', function(event) {
//     event.target.classList.add('done');
//   });
// });


// with for loop
// for (var i =0; i < listItems.length; i++ ) {
//   listItems[i].addEventListener('click', markAsDone);
// }


// without for loop
listItems.forEach(function(item) {
  item.addEventListener('click', markAsDone);
});
