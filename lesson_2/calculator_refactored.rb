require 'yaml'
MESSAGES = YAML.load_file('/Users/ethanweiner/Documents/Launch School/RB101-109/lesson_2/calculator_refactored.rb') # Loads the file
puts MESSAGES.inspect

LANGUAGE = 'en'

def messages(message, lang='en')
  MESSAGES[lang][message]
end

# Calculator: Refactored

def prompt(message)
  puts "=> #{message}"
end

# Verify that _number_ has a valid numerical representation
def valid_number?(number)
  number.to_i != 0
end

# Problems with current validation method:
# - You can not enter a zero
# - Shouldn't be able to contain any non-numeric characters

def valid_number_better?(number)
  # Match any string that contains any number of numeric characters
  number =~ /^[0-9]{1,}$/
end

# Validate integers and floats
def number?(input)
  # Validate integers & floats individually
  input.to_i.to_s == input || input.startsWith(input.to_f.to_s) # Ensures trailing zeroes are dealt w/
end

def number_better?(input)
  # Optional decimal values...
  input =~ /^(\d+)(\.\d+)?$/
end

# Verify that the operator is a valid operator
def valid_operator?(operator)
  %w(add subtract multiply divide).include?(operator)
end

def operator_description(operator)
  # If we need to add changes after the conditional, we store our operator description in a variable:
  description = if operator == "divide" then "dividing"
                else "#{operator}ing"
                end

  # x = 1

  description
end

prompt(messages('welcome', LANGUAGE))
name = ''

loop do
  name = gets.chomp
  break unless name.empty?
  prompt("Error: Make sure to use a valid name.")
end

prompt("Hi #{name}!")

loop do
  num1 = ''

  loop do
    prompt("First number: ")
    num1 = gets.chomp
    break if valid_number?(num1)
    prompt("Error: That number is invalid")
  end

  num2 = ''

  loop do
    prompt("Second number: ")
    num2 = gets.chomp
    break if valid_number?(num2)
    prompt("Error: That number is invalid")
  end

  operator_prompt = <<-MSG
    Enter an operation:
    - add
    - subtract
    - multiply
    - divide
  MSG

  prompt(operator_prompt)
  operator = ""

  loop do
    operator = gets.chomp.downcase
    break if valid_operator?(operator)
    prompt("Error: That operator is invalid. Enter a new operator:")
  end

  prompt("#{operator_description(operator)} the two numbers...")

  result = case operator
           when "add" then num1.to_i + num2.to_i
           when "subtract" then num1.to_i - num2.to_i
           when "multiply" then num1.to_i * num2.to_i
           when "divide" then num1.to_f / num2.to_f
           end

  prompt("Result: #{result}")

  prompt("Do you want to peform another calculation? (type 'y' to continue)")
  answer = gets.chomp.downcase
  break unless answer == "y"
end

prompt("Thank you for using the calculator.")

=begin

Why are we allowed to omit Kernel?

Guess: Kernel is the parent class of every other method/class, so it is automatically inferred when writing any Ruby code.

When we write any code not in class, the receiver on the methods, by default is an object called main. Since main is an instance of Object, and the Kernel module is included in the Object class, we automatically have acces to all Kernel methods.


=end
