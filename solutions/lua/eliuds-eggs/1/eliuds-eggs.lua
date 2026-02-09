--[[
  err.. how do i even know where the egg is?
  oh okay,,, so im guessing its like working math in base 2?
  so if you give me 89 and i modulo it, i get 89/2 is 44, remainder 1.. the 1 is the value from modulo
  then i pick up the 44, divide it by 2 = 22, remainder 0, then i continue till the number is lesser than 2
  and then i count the 1's in my remainders or my modulos

  also, check the modulo before you divide because you would skip the first number given
]]

local EliudsEggs = {}

function EliudsEggs.egg_count(number)

  local egg_count = 0
  local cur_number = number

  while cur_number > 0 do
    
    if cur_number%2 == 1 then
        egg_count = egg_count + 1
    end
    cur_number = math.floor(cur_number/2)

  end
  return egg_count
end

return EliudsEggs
