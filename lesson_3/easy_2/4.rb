advice = "Few things in life are as important as house training your pet
dinosaur."

# Solution 1
puts advice.include?("Dino")
puts !!(advice =~ /Dino/)
