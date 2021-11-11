greetings = { a: 'hi' }
informal_greeting = greetings[:a]
informal_greeting << ' there'

puts informal_greeting  #  => "hi there"
puts greetings

=begin

Informal greeting is assigned to the object stored in the hash at key :a, which
is 'hi'.

This object is directly mutated via concatentation with #<<

So, `greetings` was directly mutated.

The last line will print
a: 'hi there'

=end