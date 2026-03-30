return function(s)
  local unique_letters = {}
  local lowercase = s:lower()
  for letter in lowercase:gmatch("%a") do --use %a to match only letters instead of . which matches everything
    if unique_letters[letter] then
      return false
    end
    unique_letters[letter] = true
  end
  return true
end
