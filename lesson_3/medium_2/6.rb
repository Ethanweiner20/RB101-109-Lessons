def color_valid(color)
  if color == "blue" || color == "green"
    true
  else
    false
  end
end

# Note: The || operator does not necessarily return a Boolean value -- it
# returns the first truthy operand
def color_valid_v2(color)
  color == "blue" || color == "green"
end