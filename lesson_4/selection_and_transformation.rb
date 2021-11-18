# Select the key-value pairs where the value is 'Fruit'

# Solution 1: Using a basic looping mechanism

def select_fruit(produce)
  fruit = {}
  counter = 0
  keys = produce.keys

  loop do
    break if counter == keys.size
    key = keys[counter]
    fruit[key] = produce[key] if produce[key] == 'Fruit'
    counter += 1
  end

  fruit
end

# Solution 2: Using a looping abstraction
def select_fruit_v2(produce)
  fruit = {}
  produce.each { |key, value| fruit[key] = value if value == 'Fruit' }
  fruit
end


produce = {
  'apple' => 'Fruit',
  'carrot' => 'Vegetable',
  'pear' => 'Fruit',
  'broccoli' => 'Vegetable'
}

# puts select_fruit(produce)
# puts select_fruit_v2(produce)

# Implement a double_numbers! method that mutates its argument

def double_numbers!(numbers)
  counter = 0

  loop do
    break if counter == numbers.size
    numbers[counter] *= 2
    counter += 1
  end

  numbers # Return the input anyways
end

# numbers = [1, 2, 3]
# double_numbers!(numbers)
# p numbers

# Write a method that doubles _numbers_ that have odd indices

def double_odd_index_numbers(numbers)
  doubled_numbers = []
  counter = 0

  loop do
    break if counter == numbers.size

    if counter.odd?
      transformed_number = numbers[counter] * 2
    else
      transformed_number = numbers[counter]
    end

    doubled_numbers << transformed_number

    counter += 1
  end

  doubled_numbers
end

# numbers = [1, 2, 3, 4]
# p double_odd_index_numbers(numbers)

def multiply(numbers, factor)
  counter = 0
  transformed_numbers = []

  loop do
    break if counter == numbers.size
    transformed_numbers << numbers[counter] * factor
    counter += 1
  end

  transformed_numbers
end

numbers = [1, 2, 3]
p multiply(numbers, 3)
