static class QuestLogic
{
    public static bool CanFastAttack(bool knightIsAwake)
    {
        //throw new NotImplementedException("Please implement the (static) QuestLogic.CanFastAttack() method");
        if (knightIsAwake == true){
            return false;
        }
        return true;
    }

    public static bool CanSpy(bool knightIsAwake, bool archerIsAwake, bool prisonerIsAwake)
    {
        //throw new NotImplementedException("Please implement the (static) QuestLogic.CanSpy() method");
        if (knightIsAwake == true || archerIsAwake == true || prisonerIsAwake == true){
            return true;
        }
        return false;
    }

    public static bool CanSignalPrisoner(bool archerIsAwake, bool prisonerIsAwake)
    {
        //throw new NotImplementedException("Please implement the (static) QuestLogic.CanSignalPrisoner() method");
        if (archerIsAwake == false && prisonerIsAwake == true){
            return true;
        } 
        return false;
    }

    public static bool CanFreePrisoner(bool knightIsAwake, bool archerIsAwake, bool prisonerIsAwake, bool petDogIsPresent)
    {
        //throw new NotImplementedException("Please implement the (static) QuestLogic.CanFreePrisoner() method");
        if (petDogIsPresent == true  && archerIsAwake == false){
            return true;
        }
        else if (petDogIsPresent == false && prisonerIsAwake == true && knightIsAwake == false && archerIsAwake == false ){
            return true;
        }
        return false;
    }
}
