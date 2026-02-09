local ArmstrongNumbers = {}

--[[
  1. place the digits separtely into another variable
  2. use their index to multiply them, and then add the values
  3. if the sum from 2 gives you the number again, its an ArmstrongNumber so you append to Armstrong
]]
function ArmstrongNumbers.is_armstrong_number(number)
  local digits = {}
  local final_value = 0
  
  for d in tostring(number):gmatch(".") do
    table.insert(digits, tonumber(d))
  end
  
  for key, value in ipairs(digits) do
    local results = value ^ #digits
    final_value = final_value + results
  end
  
 return final_value == number
end

return ArmstrongNumbers
