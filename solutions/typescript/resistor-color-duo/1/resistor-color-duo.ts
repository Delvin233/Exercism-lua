export function decodedValue(colors: string[]) {
  //throw new Error('Remove this line and implement the function')
  var firstColor = Colors[ colors[0] as keyof typeof Colors];
  var secondColor = Colors[ colors[1] as keyof typeof Colors];
  return Number(`${firstColor}${secondColor}`);
}

enum Colors{
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