# mess_with_it does not mutate arguments.

# The output is 34. `answer` is not mutated because Integers are non-mutating.
# More specifically, the #+= operation does not mutate its caller directly,
# but rather reassigns it to a new value.