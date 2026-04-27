public static class Leap
{
    public static bool IsLeapYear(int year)
    {
        //throw new NotImplementedException("You need to implement this method.");
        /*if (year % 4 == 0)
        {
            if (year % 100 == 0)
            {
                if (year % 400 == 0)
                {
                    return true;
                }
                return false;
            }
            return true;
        }
        return false;
        */
        if ((year % 4 == 0 && year % 100 != 0) || year % 400 == 0)
        {
            return true;
        }
        return false;
    }
}