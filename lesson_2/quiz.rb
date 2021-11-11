=begin

7.

b. 

12 < 4 || 12 > 8 && 12 < 10 || 12 > 16
false || false || false
false || false
false

c.

true || false
true

d.

false || true
true

8.

Essentially: Find the longest word in a sentence

a. Iterates through all the words, instead of excluding the first word
b. Comparison is innacurate

=end

# 12: Testing

# b. I believe it's false, but let's check (branches do not create new scope
# rules, but rather just inherit the scope rules of whatever's outside)

# b. is right in that the branches don't conflict -- because they will never
# occur in one execution. However, branches DO NOT define an inner scope, making
# b false.

# 14

=begin

a. This won't work because reassignment does not directly mutate an object.
It will just reassign the greeting variable local to #extend_greeting
to "hi there".

b. This will work. extend_greeting's return value will be "hi there", which 
will be reassigned to the outer scope variable greeting.

d. This will work. String#<< is a mutating method, so the object `greeting`
points to will be directly mutated.

=end