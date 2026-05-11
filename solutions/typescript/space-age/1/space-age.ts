export function age(planet: string, seconds: number): number {
  //throw new Error('Remove this line and implement the function')
  let spaceAge = (1 /PlanetAge[planet as  keyof typeof PlanetAge]) * (seconds / 31557600);
  return Number(spaceAge.toFixed(2));
}

enum PlanetAge{
  mercury = 0.2408467,
  venus = 0.61519726,
  earth = 1.0,
  mars = 1.8808158,
  jupiter = 11.862615,
  saturn = 29.447498,
  uranus = 84.016846,
  neptune = 164.79132,
}