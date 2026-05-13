export function format(name: string, number: number): string {
  //return `${name}, your are the ${number} st customer we serve today. Thank you!`
  let numberConv: string = number.toString();
  let ender2 : string = numberConv.slice(-2);
  let ender1 : string = numberConv.slice(-1);
  

  for (const digit of numberConv){
      if (ender2 == "11" || ender2 == "12" || ender2 == "13"){
        return `${name}, you are the ${number}th customer we serve today. Thank you!`;
      }
      else if (ender1 == "1"){
        return `${name}, you are the ${number}st customer we serve today. Thank you!`;
      }
      else if (ender1 == "2"){
        return `${name}, you are the ${number}nd customer we serve today. Thank you!`;
      }
      else if (ender1 == "3"){
        return `${name}, you are the ${number}rd customer we serve today. Thank you!`;
      } 
  }

  return `${name}, you are the ${number}th customer we serve today. Thank you!`;
}
