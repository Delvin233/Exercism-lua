export function score(x: number, y: number): number {
  //throw new Error('Remove this line and implement the function')
  const pythagrasThingy = Math.sqrt( x ** 2 + y ** 2);

  switch (true){
      case(pythagrasThingy > 10):
        return 0;
      case(pythagrasThingy > 5):
        return 1;
      case(pythagrasThingy > 1):
        return 5;
    default:
      return 10;
  }
}
