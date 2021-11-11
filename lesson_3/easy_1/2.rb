=begin

! can:
- Be a suffix of a mutating method
- Negate a Boolean value or the truthiness of an object
- Be used in the != operator

? can:
- Be a suffix of a method that returns a Boolean
- Be part of a ternary operation (after the condition)

1. != is as conditional operator that checks to see if its operands are not
equal to one another.
2. Returns a Boolean value whose truthiness is the opposite of the truthiness
of the following object
3. If an associated method (with the ! appended) exists, it will call that
method. By naming conventions, that method is likely to be a mutating method
(i.e. mutates its caller)
4. I'm not sure . . .
5. Sets up a ternary operation: condition ? <expression if true> : <expression
if false>
6. Returns a Boolean value whose truthiness is equal to the truthiness of the
following object (i.e. converts the object to the Boolean value representing
its truthiness).

=end
