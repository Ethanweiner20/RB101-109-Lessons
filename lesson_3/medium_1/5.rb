=begin

`limit` is a local variable in the scope of the main program. Ben is trying to 
access `limit` in the inner scope defined by `fib`. Since methods have self-
contained scope, `fib` can not access any local variables defined in outer
scopes, such as `limit`.

We could fix this by:
- Converting `limit` to a constant (constants have global scope): LIMIT = 15
- Passing `limit` as a parameter to #fib

=end
