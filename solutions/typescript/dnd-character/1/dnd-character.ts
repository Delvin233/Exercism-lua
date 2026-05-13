export class DnDCharacter {
 // well since Exercism wants more magic, lemme help them
    readonly hitpoints: number;
    readonly strength: number;
    readonly dexterity: number;
    readonly constitution: number;
    readonly intelligence: number;
    readonly wisdom: number;
    readonly charisma: number;

    constructor(){
      this.strength = DnDCharacter.generateAbilityScore();
      this.dexterity = DnDCharacter.generateAbilityScore();
      this.constitution = DnDCharacter.generateAbilityScore();
      this.intelligence = DnDCharacter.generateAbilityScore();
      this.wisdom = DnDCharacter.generateAbilityScore();
      this.charisma = DnDCharacter.generateAbilityScore();

      this.hitpoints = 10 + DnDCharacter.getModifierFor(this.constitution);

    }
  public static generateAbilityScore(): number {
    //throw new Error('Remove this line and implement the function')
    let diceRolls: number[] = [];

    for (let i = 0; i < 4; i ++){
      diceRolls.push(Math.floor(Math.random() * 6) + 1);
    }
    const topThree = diceRolls.sort((a, b) => (b -a)).slice(0, 3);
    
    let sumOfThree = 0;
    // i can use whats below, however, i just found an automagic way of doing this :)
    /*for (let i = 0; i < topThree.length, i ++){
      sumOfThree += topThree[i];
    } */
    for (const roll of topThree){
      sumOfThree += roll;
    }
    return sumOfThree;
  }

  public static getModifierFor(abilityValue: number): number {
    //throw new Error('Remove this line and implement the function')
    return Math.floor((abilityValue - 10) / 2);
  }
}
