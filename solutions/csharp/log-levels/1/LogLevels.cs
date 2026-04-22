static class LogLine
{
    public static string Message(string logLine)
    {
        //throw new NotImplementedException("Please implement the (static) LogLine.Message() method");
        int colonPos = logLine.IndexOf(":") + 2;
        string msg = logLine.Substring(colonPos);
        return msg.Trim();
    }

    public static string LogLevel(string logLine)
    {
        //throw new NotImplementedException("Please implement the (static) LogLine.LogLevel() method");
        int sqBracketPos = logLine.IndexOf("[") + 1;
        int secondSqBracketPos = logLine.IndexOf("]");
        string loglvl = logLine.Substring(sqBracketPos, (secondSqBracketPos - sqBracketPos));
        return loglvl.ToLower();
        
    }

    public static string Reformat(string logLine)
    {
        //throw new NotImplementedException("Please implement the (static) LogLine.Reformat() method");
        return $"{Message(logLine)} ({LogLevel(logLine)})";
    }
}
