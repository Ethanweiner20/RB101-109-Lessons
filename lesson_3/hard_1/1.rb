=begin

I expect an error stating that `greeting` is an undefined method or local
variable. `greeting` will never be initialized, because the branch is never
executed.

CORRECTION: Somehow, greeting is initialized, despite the branch not being
executed. Ruby must initialize any variables inside branches to nil even if 
those branches are not executed.

=end

if false
  greeting = "hello world"
end

greeting