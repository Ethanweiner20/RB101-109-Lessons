def tricky_method(a_string_param, an_array_param)
  a_string_param += "rutabaga"
  an_array_param << "rutabaga"
end

my_string = "pumpkins"
my_array = ["pumpkins"]
tricky_method(my_string, my_array)

puts "My string looks like this now: #{my_string}"
puts "My array looks like this now: #{my_array}"

=begin

We can break up the method into two separate methods, each of which have
descriptive names that clearly suggest the purpose of the method.

For example:

=end

def string_with_addition(string)
  string += "rutabaga"
end

def add_to_array(array)
  array << "rutabaga"
end

=begin

Furthermore, we could also add consistency to the program by choosing to either
peform mutating operations or non-mutating operations across both methods:

=end

def less_tricky_method(a_string_param, an_array_param)
  a_string_param += "rutabaga"
  an_array_param += "rutabaga"

  return a_string_param, an_array_param
end