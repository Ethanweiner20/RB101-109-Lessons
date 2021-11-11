def tricky_method_two(a_string_param, an_array_param)
  a_string_param << 'rutabaga'
  an_array_param = ['pumpkins', 'rutabaga']
end

my_string = "pumpkins"
my_array = ["pumpkins"]
tricky_method_two(my_string, my_array)

puts "My string looks like this now: #{my_string}"
puts "My array looks like this now: #{my_array}"

=begin

In this case, the object `my_string` points to is modified directly. On the
contrary, `an_array_param` is reassigned to a separate array, and the object
pointed to by `my_array` is never mutated. Another way to know that `my_array`
was never mutated is by the fact that no mutating methods were ever performed
on its associated parameter.

N.B. There are instances where mutating methods might be performed on a parameter,
but the effect is not observed by the outer scope variable -- e.g. if the
parameter is reassigned to a new object before calling any mutating methods on it.

=end
