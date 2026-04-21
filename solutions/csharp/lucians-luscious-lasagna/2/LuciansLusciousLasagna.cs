class Lasagna
{
    // TODO: define the 'ExpectedMinutesInOven()' method
    /* public int ExpectedMinutesInOven(){
        return 40;
    } */
    public int ExpectedMinutesInOven() => 40;

    // TODO: define the 'RemainingMinutesInOven()' method
    public int RemainingMinutesInOven(int timeSpent){
        return ExpectedMinutesInOven() - timeSpent;
    }

    // TODO: define the 'PreparationTimeInMinutes()' method
    public int PreparationTimeInMinutes(int slices){
        return 2 * slices;
    }

    // TODO: define the 'ElapsedTimeInMinutes()' method
    public int ElapsedTimeInMinutes(int slices, int timeSpent){
        return PreparationTimeInMinutes(slices) + (timeSpent);
    }
}
