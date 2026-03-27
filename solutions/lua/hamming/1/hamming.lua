local Hamming = {}

function Hamming.compute(a, b)
  local distance = 0
  local strand1 = tostring(a)
  local strand2 = tostring(b)

  if #strand1 ~= #strand2 then 
    error("strands must be of equal length")
  end

  --we would use sub here
  for i = 1, #strand1 do
    if strand1:sub(i, i) ~= strand2:sub(i, i) then
      distance = distance + 1
    end
  end
  return distance

end

return Hamming
