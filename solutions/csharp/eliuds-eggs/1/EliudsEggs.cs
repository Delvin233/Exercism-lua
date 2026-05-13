public static class EliudsEggs
{
    public static int EggCount(int encodedCount)
    {
        //throw new System.NotImplementedException("You need to implement this method.");
        int eggs = 0;
        while (encodedCount > 0)
        {
            int mod = encodedCount % 2;
            if (mod == 1)
            {
                eggs ++;
            }
            encodedCount = encodedCount / 2;
        }
        return eggs;
    }
}
