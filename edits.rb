new_Arr = []

  array.select do |words|
     if words.start_with?("r")== true
      new_Arr << words
    end
  end
if new_Arr == array
  return true
else
  return false
end
