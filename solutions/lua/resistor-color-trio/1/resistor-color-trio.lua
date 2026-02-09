--[[
  we have to get the color codes outside the main function
  then, we bring the values of the first 2 colors concatonated
  then for the third value, we use it as a raise to the power of n eg, 10^n
  Bonus: if n > 2, we use kilo

]]
local codes = {
  black = 0, brown = 1, red = 2, orange = 3, yellow = 4,
  green = 5, blue = 6, violet = 7, grey = 8, white = 9
}
return {
  decode = function(c1, c2, c3)

    local first  = codes[c1]
    local second  = codes[c2]
    local third  = codes[c3]
    
    local result_string = tostring(first) .. tostring(second)
    local final_value = tonumber(result_string) * (10 ^ third)

    if final_value >= 10^9 then
      return math.floor(final_value)/10^9, "gigaohms"
    elseif final_value >= 10^6 then
      return math.floor(final_value)/10^6, "megaohms"
    elseif final_value >= 10^3  then
      return math.floor(final_value)/10^3, "kiloohms"
    else
      return math.floor(final_value), "ohms"
    end
  end
}
