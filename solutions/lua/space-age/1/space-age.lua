local SpaceAge = {}

local earth_years_in_seconds = 31557600
function SpaceAge:new(seconds)
  local obj = {}

  obj.seconds = seconds

  obj.on_earth = function()
    local value = tonumber(seconds/ earth_years_in_seconds * 1)
    return tonumber(string.format("%.2f", value))
  end
  obj.on_mercury = function()
    local value = seconds/ (earth_years_in_seconds * 0.2408467)
    return tonumber(string.format("%.2f", value))
  end
  obj.on_venus = function()
    local value = seconds/ (earth_years_in_seconds * 0.61519726)
    return tonumber(string.format("%.2f", value))
  end
  obj.on_mars = function()
    local value = seconds/ (earth_years_in_seconds * 1.8808158)
    return tonumber(string.format("%.2f", value))
  end
  obj.on_jupiter = function()
    local value = seconds/ (earth_years_in_seconds * 11.862615)
    return tonumber(string.format("%.2f", value))
  end
  obj.on_saturn = function()
    local value = seconds/ (earth_years_in_seconds * 29.447498)
    return tonumber(string.format("%.2f", value))
  end
  obj.on_uranus = function()
    local value = seconds/ (earth_years_in_seconds * 84.016846)
    return tonumber(string.format("%.2f", value))
  end
  obj.on_neptune = function()
    local value = seconds/ (earth_years_in_seconds * 164.79132)
    return tonumber(string.format("%.2f", value))
  end
  return obj
end
return SpaceAge


--[[
Keep this incase you are reviewing... this can be made way simple, making reading easy lol:
local SpaceAge = {}

local earth_years_in_seconds = 31557600

function SpaceAge:new(seconds)
  local obj = {}
  obj.seconds = seconds

  -- Helper to keep your code clean and dry (Don't Repeat Yourself)
  local function calculate(ratio)
    local value = seconds / (earth_years_in_seconds * ratio)
    return tonumber(string.format("%.2f", value)) -- Turn text back to number
  end

  obj.on_earth   = function() return calculate(1) end
  obj.on_mercury = function() return calculate(0.2408467) end
  obj.on_venus   = function() return calculate(0.61519726) end
  obj.on_mars    = function() return calculate(1.8808158) end
  obj.on_jupiter = function() return calculate(11.862615) end
  obj.on_saturn  = function() return calculate(29.447498) end
  obj.on_uranus  = function() return calculate(84.016846) end
  obj.on_neptune = function() return calculate(164.79132) end

  return obj
end

return SpaceAge

]]