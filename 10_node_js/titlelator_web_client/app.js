var $titlelateBtn = $('.titlelat-btn')
var $titleDiv = $('.title-div')
var $keywordInput = $('.keyword-input')

$titlelateBtn.on('click', (event) => {
  event.preventDefault();
  console.log('foo')

  function showTitle(resp) {
    $titleDiv.text(resp.title)

  }

  $.ajax({
    url: 'http://localhost:7777/api/titles',
    keyword: $keywordInput.val()
  }).done(showTitle)

})