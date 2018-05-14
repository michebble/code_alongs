// f to c subtract 32 and multiply by .5556 (or 5/9)

var convertToCelsius = function(kelvin) {
  var celsius = kelvin - 273.15;
  return celsius
}

module.exports = { 
  convertToCelsius: convertToCelsius
};