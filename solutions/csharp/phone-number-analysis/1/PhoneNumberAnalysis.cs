public static class PhoneNumber
{
    public static (bool IsNewYork, bool IsFake, string LocalNumber) Analyze(string phoneNumber)
    {
        //throw new NotImplementedException($"Please implement the (static) PhoneNumber.Analyze() method");
         string firstThree = phoneNumber.Substring( 0, 3);
         string secondThree = phoneNumber.Substring( 4, 3);
        //static string last digits = phoneNumber.Substring( phoneNumber[7], phoneNumber[10]);
         string lastDigits = phoneNumber.Substring(8);

        bool IsNewYork = firstThree == "212";
        bool IsFake = secondThree == "555";
        string localNumber = lastDigits;
        return (IsNewYork, IsFake, localNumber);
    }

    public static bool IsFake((bool IsNewYork, bool IsFake, string LocalNumber) phoneNumberInfo)
    {
        //throw new NotImplementedException($"Please implement the (static) PhoneNumber.IsFake() method");
        return phoneNumberInfo.IsFake;
        
    }
}
