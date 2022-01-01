require 'pry-byebug'

def test_method(a, b)
  a.to_i + b.to_i
end

# puts test_method('1', '2')

def select_nums(arr)
  new_arr = []
  arr.each do |num|
    new_arr << num if valid?(num)
  end
  new_arr
end

def valid?(num)
  num.odd? && (num <= 15 || num % 3 == 0)
end

# p select_nums([6, 12, 18]) == []

def double_num(num)
  num + 2
end

def double_evens(arr)
  arr.map do |num|
    binding.pry
    if num.even?
      new_num = double_num(num)
    end
  end
end

p double_evens([1, 3, 4]) == [1, 3, 8]
