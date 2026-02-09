local color_codes = {
  black = 0, brown = 1, red = 2, orange = 3, yellow = 4,
  green = 5, blue = 6, violet = 7, grey = 8, white = 9
}
return {
  value = function(colors)

    local first_color = color_codes[colors[ 1 ]]
    local second_color = color_codes[colors[ 2 ]]

    local concat = tostring(first_color) .. tostring(second_color)

    return tonumber(concat)
  end
}
