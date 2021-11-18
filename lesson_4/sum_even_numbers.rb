def create_row(row_length, start_integer)
  row = []
  current_integer = start_integer

  loop do
    row << current_integer
    current_integer += 2
    break if row.length >= row_length
  end

  row
end

# p create_row(1, 2) == [2]            # => [2]
# puts create_row(2, 4) == [4, 6]      # => [4, 6]
# puts create_row(3, 8) == [8, 10, 12] # => [8, 10, 12]

def sum_even_number_row(row_number)
  rows = []
  start_integer = 2

  (1..row_number).each do |current_row_number|
    rows << create_row(current_row_number, start_integer)
    start_integer = rows.last.last + 2
  end

  rows.last.sum
end

puts sum_even_number_row(1) == 2  # => 2
puts sum_even_number_row(2) == 10 # => 10
puts sum_even_number_row(3) == 30 # => 30