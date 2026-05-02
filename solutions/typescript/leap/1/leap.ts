export function isLeap(year: number) {
  //throw new Error('Remove this line and implement the function')
  if ((year % 4 == 0 && year % 100 != 0) || year % 400 == 0){ return true;}
  else { return false;}
}
