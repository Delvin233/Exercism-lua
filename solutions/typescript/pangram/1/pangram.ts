export function isPangram(sentence: string): boolean {
  //throw new Error('Remove this line and implement the function')
  const smallAlpha: string = "abcdefghijklmnopqrstuvwxyz";
  let checker: string = ""
  const lowerSent: string = sentence.toLowerCase();

  for (const i of smallAlpha){
    if (lowerSent.includes(i)){
      checker += i;
    }
  }
  if (checker.length == smallAlpha.length){
    return true;
  }
  else {return false};
}