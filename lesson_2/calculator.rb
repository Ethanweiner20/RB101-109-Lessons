# PROBLEM

=begin

Build a command line calculator that does the following:
- Asks for two numbers
- Asks for the type of operation to perform
- Displays the result

=end

# PSEUDOCODE

=begin

Ask the user for two numbers
Ask the user for an operation to perform
Perform the operaiton on the two numbers
Output the result

=end

# User input retrieval

puts "First number: "
num1 = gets.chomp
puts "Second number: "
num2 = gets.chomp
puts "Operation (add/subtract/multiply/divide): "
operation = gets.chomp.downcase

# As a method

def calculate(num1, num2, operation)
  case operation
  when "add" then return num1.to_i + num2.to_i
  when "subtract" then return num1.to_i - num2.to_i
  when "multiply" then return num1.to_i * num2.to_i
  when "divide" then return num1.to_f / num2.to_f
  end
end

puts "Result: #{calculate(num1, num2, operation)}"

# Without a method

result = if operation == "add"
           num1.to_i + num2.to_i
         elsif operation == "subtract"
           num1.to_i + num2.to_i
         elsif operation == "multiply"
           num1.to_i * num2.to_i
         elsif operation == "divide"
           num1.to_f / num2.to_f
         end

puts "Result: #{result}"

