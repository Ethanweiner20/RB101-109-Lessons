# Solution 1: Use built-in include method

puts "42 lies between 10 and 100" if (10..100).include?(42)

(10..100).each do |num|
  if num == 42
    puts "42 lies between 10 and 100"
    break
  end
end