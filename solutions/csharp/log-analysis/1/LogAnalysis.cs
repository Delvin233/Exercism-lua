public static class LogAnalysis 
{
    // TODO: define the 'SubstringAfter()' extension method on the `string` type
    public static string SubstringAfter(this string str, string param){
        int paramPos = str.IndexOf(param) + param.Length;
        return str.Substring(paramPos);
    }

    // TODO: define the 'SubstringBetween()' extension method on the `string` type
    public static string SubstringBetween(this string str,  string param1,  string param2){
        int param1Pos = str.IndexOf(param1) + param1.Length;
        int param2Pos = str.IndexOf(param2);
        return str.Substring(param1Pos, (param2Pos - param1Pos));
        
    }
    
    // TODO: define the 'Message()' extension method on the `string` type
    public static string Message(this string str){
        return str.SubstringAfter(": ").Trim();
    }

    // TODO: define the 'LogLevel()' extension method on the `string` type
    public static string LogLevel(this string str){
        return str.SubstringBetween("[", "]");
    }
}