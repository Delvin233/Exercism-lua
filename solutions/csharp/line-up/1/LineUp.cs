public static class LineUp
{
    public static string Format(string name, int number)
    {
        //throw new NotImplementedException("You need to implement this method.");
        string numberStr = number.ToString();
        if (numberStr[^1] == '1' && !numberStr.EndsWith("11")){
            return $"{name}, you are the {number}st customer we serve today. Thank you!";
        }
        else if (numberStr[^1] == '2' && !numberStr.EndsWith("12")){ 
            return $"{name}, you are the {number}nd customer we serve today. Thank you!";
        }
        else if (numberStr[^1] == '3' && !numberStr.EndsWith("13")){ 
            return $"{name}, you are the {number}rd customer we serve today. Thank you!";
        }
        else{
            return $"{name}, you are the {number}th customer we serve today. Thank you!";
        }
    }
}
