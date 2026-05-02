export function decodedResistorValue(colors: string[]) {
  //throw new Error('Remove this line and implement the function')
  var firstColor = Colors[colors[0] as keyof typeof Colors];
  var secondColor = Colors[colors[1] as keyof typeof Colors];
  var thirdColor = Colors[colors[2] as keyof typeof Colors];
  var value = Number(`${firstColor}${secondColor}`) * (10 ** Number(thirdColor));

 //return `${value} ohms`;
  if (thirdColor > 2 && thirdColor < 6){
    var newValue = value / (10 ** 3);
    return `${newValue} kiloohms`;
  }
  else if (thirdColor > 5 && thirdColor < 9){
    var newValue = value / (10 ** 6);
    return `${newValue} megaohms`;
  }
  else if (thirdColor > 8 && thirdColor < 12){
    var newValue = value / (10 ** 9);
    return `${newValue} gigaohms`;
  }
  else if (thirdColor == 2){
    var newValue = value/ (10 ** 3);
    return `${newValue} kiloohms`;
  }
  else { return `${value} ohms`;}
}

enum Colors {
  black = 0,
  brown = 1,
  red = 2,
  orange = 3,
  yellow = 4,
  green = 5,
  blue = 6,
  violet = 7,
  grey = 8,
  white = 9,
}