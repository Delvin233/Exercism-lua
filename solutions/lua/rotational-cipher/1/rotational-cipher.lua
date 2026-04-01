return {
  rotate = function(input, key)
    local result = ''
    key = key % 26 -- the mod idea is that it goes into it 0 times with a remainder of itself 

    for i = 1, #input do 
      local char = input:sub(i, i)
      local byte = string.byte(char)

      if char:match("%a") then
        local base = (byte >= 97) and 97 or 65
        char = string.char(((byte - base + key) % 26) + base)
      end 
      result = result .. char
    end
    return result
  end
}

-- I know this is one of the questions you dont like so have this explanation for the future
--[[
A Caesar cipher is a simple encryption technique where you replace each letter in a message with another letter found a fixed number of positions down the alphabet. For example, with a shift of three, the letter A becomes D, B becomes E, and so on. This method is named after Julius Caesar, who reportedly used it to protect his military communications. The core idea relies on treating the alphabet as a circular loop, meaning that if you shift past the letter Z, you simply wrap back around to the beginning at A.

To build this in a programming language like Lua, you first need a way to look at each character in a string one by one. Since computers understand numbers better than letters, you convert each character into its ASCII numeric code. For instance, the uppercase letter A is represented by the number 65. Because the alphabet has 26 letters, the most important mathematical tool you use is the modulo operator, written as a percent sign in Lua. This operator calculates the remainder of a division, which is what allows the "wrap-around" effect to happen automatically without needing complex logic.

When writing the code, you usually separate letters from everything else. You want to shift the letters, but you typically want to leave spaces, periods, and hyphens exactly where they are so the message remains readable. In Lua, you check if a character is a letter using a pattern match. If it is, you subtract a "base" number (like 65 for uppercase) to turn the letter into a simple number between 0 and 25. You then add your shift key, apply the modulo 26, and add the base back. This transforms the number back into the correct shifted ASCII code, which you then convert back into a readable character.

This same logic works in reverse for decryption. If you know a message was encrypted with a shift of five, you can simply shift it by negative five (or positive twenty-one) to get the original text back. While the Caesar cipher is easy to understand and implement, it isn't very secure by modern standards because there are only 25 possible shifts to try before you find the right one. However, it serves as the perfect introduction to how data can be transformed and obscured using math and logic.
]]