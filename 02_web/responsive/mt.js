console.log("Money Tree")


var makeItRain = function(levels) {
  var amount = 1
  var tree = "";
  for (var i = 1; i <= levels; i++) {
      var string = []
      for (var j = 0; j < levels - i; j++) {
        string.push(" ")
      }
      for (var j = 0; j < amount ; j++) {
        string.push("$")
      }
      amount += 2
      var string = string
      for (var j = 0; j < levels - i; j++) {
        string.push(" ")
      }
    tree += string.join('') + "\n"
  }
  console.log(tree)
}
