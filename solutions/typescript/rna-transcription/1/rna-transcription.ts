export function toRna(nucleotide : string) {
  //throw new Error('Remove this line and implement the function')
  let update:string = "";
  for (const letter of nucleotide){
    if ( letter === "G"){ update += "C";}
    else if ( letter === "C"){ update +=  "G";}
    else if ( letter === "T"){ update +=  "A";}
    else if ( letter === "A"){ update +=  "U";}
    else {
      throw new Error("Invalid input DNA.")
    }
  }
  return update;

}
