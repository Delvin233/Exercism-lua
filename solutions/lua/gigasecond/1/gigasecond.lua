--[[
  so we take a regex, split it in parts and then do the multiplication as we convert to seconds
  then add all the seconds
  then do the giga 10^9 check, which in this question is "after" so i guess add it to giga 
  then return the number of seconds and gigaseconds string 

  WE MIGHT be overthinking here lol... there's os.time and os.date
]]

local gigasecond = {}

function gigasecond.anniversary(any_date)
  local giga = 10^9
  local future = any_date + giga
  return os.date("%x", future)
end

return gigasecond
