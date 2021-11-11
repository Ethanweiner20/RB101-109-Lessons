# Clarifications:

# There must be exactly 4 components to the IP address
# 

def dot_separated_ip_address?(input_string)
  dot_separated_words = input_string.split(".")
  return false if dot_separated_words.size != 4

  while dot_separated_words.size > 0 do
    word = dot_separated_words.pop
    return false unless is_an_ip_number?(word)
  end
  
  true
end

# Return false upon reaching the first violation (the return value bubbles up
# to the method)
# Return true if we make it through all the words without an ip # violation.