local SquareRoot = {}

function SquareRoot.square_root(radicand)
  if radicand == 0 then return 0 end

  --first guess
  local x = radicand/2
  local precision = 00001

  --we get a loop to make sure the difference between x and our radicand is in our precision
  while math.abs(radicand - (x * x)) > precision do
    x = 0.5 * (x + (radicand/x))
  end

  return math.floor(x + 0.5) --rounding to the nearest whole integer
end

return SquareRoot

--[[
  return radicand ^ 0.5
is the expected answer, yet since i spent half the day looking at the history of sqrts:
Newton approach
Babylonian approach
Heron's method and 
exponent of the natural log of the number divided by 2...

what a way to spend my day lol... so then i'd  challenge myself and implement the Babylonian approach
]]