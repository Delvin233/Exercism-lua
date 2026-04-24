static class AssemblyLine
{
    public static double SuccessRate(int speed)
    {
        //throw new NotImplementedException("Please implement the (static) AssemblyLine.SuccessRate() method");
        if (speed == 0){ return 0;}
        else if (speed >=1 && speed <= 4){return 100/100.0;}
        else if (speed >=5 && speed <= 8){return 90/100.0;}
        else if (speed == 9){return 80/100.0;}
        else{ return 77/100.0;}
    }
    
    public static double ProductionRatePerHour(int speed)
    {
        //throw new NotImplementedException("Please implement the (static) AssemblyLine.ProductionRatePerHour() method");
        double rateAtOne = 221.0;
        return (speed * rateAtOne) * SuccessRate(speed);
    }

    public static int WorkingItemsPerMinute(int speed)
    {
        //throw new NotImplementedException("Please implement the (static) AssemblyLine.WorkingItemsPerMinute() method");
        return (int)ProductionRatePerHour(speed)/60;
    }
}
