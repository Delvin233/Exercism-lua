local lookup_table = {
  ['a'] = 'z', ['b'] = 'y', ['c'] = 'x', ['d'] = 'w', ['e'] = 'v',
  ['f'] = 'u', ['g'] = 't', ['h'] = 's', ['i'] = 'r', ['j'] = 'q',
  ['k'] = 'p', ['l'] = 'o', ['m'] = 'n', ['n'] = 'm', ['o'] = 'l',
  ['p'] = 'k', ['q'] = 'j', ['r'] = 'i', ['s'] = 'h', ['t'] = 'g',
  ['u'] = 'f', ['v'] = 'e', ['w'] = 'd', ['x'] = 'c', ['y'] = 'b', ['z'] = 'a'
}

local function encode(phrase)
  local cipher = ""
  local count = 0
  
  for letter in phrase:lower():gmatch(".") do
    local char = lookup_table[letter] or letter:match("%d")
    
    if char then
      if count > 0 and count % 5 == 0 then
        cipher = cipher .. " "
      end
      
      cipher = cipher .. char
      count = count + 1
    end
  end
  return cipher
end


local function decode(phrase)
  return encode(phrase):gsub("%s", "")
end

return { encode = encode, decode = decode }
