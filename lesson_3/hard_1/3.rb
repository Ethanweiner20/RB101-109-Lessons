# A

=begin

The outer scope variables are not mutated. Reassignment occurs on the
parameters, which are variables local to `mess_with_vars`, and so the outer
scope variables `one`, `two`, `three` are not reassigned. Nor are they mutated.

one is: one
two is: two
three is: three

=end

# B

=begin

Again, the outer scope variables are neither reassigned nor mutated. So we
will get the same output.

one is: one
two is: two
three is: three

=end

# C

=begin

Contrary the previous 2 examples, direct mutation of the parameters `one`,
`two`, and `three` is occurring, because String#gsub! is a mutating method.
These parameters point directly to the objects that the outer scope
variables refer to, because Ruby passes the reference of the outer scope
variables to the method. So, mutation of these parameters results in mutation
of the outer scope parameters.

one is: two
two is: three
three is: one

=end