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

Display:

My string looks like this now: pumpkins
My array looks like this now: ["pumpkins", "rutabaga"]

Reasoning:

my_string is not mutated by tricky_method. Rather, the local variable
a_string_param, which is initially assigned to the object stored by my_string,
is simply reassigned to a new string with "rutabaga" concatendated onto it. The
variable my_string, however, is not reassigned.

my_array is mutated by the method because an_array_param points to the same
object object stored by my_string, and directly concatenates "rutabaga" onto
it using the mutating Array#<< method.

It is not that string an array arguments are being treated differently -- the
differences lies in the fact that we call a non-mutating method on
a_string_param and a mutating method on an_array_param. If we had called #<<
instead of #+= on a_string_param, we would have seen similar behavior.

=end