local Darts = {}

--[[
  1. draw the radiusus and give points like a cartesian plane, where you map them x and y and          negatives too
    outer = 10 ; 1 point
    middle = 5 ; 5 points
    inner = 1 ; 10 points
  2. Not in any radius == outside, thus 0 points
` 3. take some x, y values ~ ot a cartesian plane
]]
function Darts.score(x, y)
  local radius = math.sqrt((x^2) + (y^2))
  if radius <=1 then
    return 10
  elseif radius <= 5 then
    return 5
  elseif radius <= 10 then
    return 1
  else
    return 0
  end
end

return Darts
