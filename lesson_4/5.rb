flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

# Solution 1

be_index = -1

flintstones.each_with_index do |name, index|
  if name.start_with?("Be")
    be_index = index
    break
  end
end

puts be_index

# Solution 2 (using method)

be_index = flintstones.index { |name| name.start_with?("Be") }
puts be_index