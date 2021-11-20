arr = [{a: [1, 2, 3]}, {b: [2, 4, 6], c: [3, 6], d: [4]}, {e: [8], f: [6, 10]}]

=begin

- Select hashes from the array
  - Selection criteria: Do all the values in the hash contain only even integers?
    - For each value in the hash:
      - Check if the value contains all even integers

Implementation Notes: Use #all? on each array of integers

=end

all_even_integers = arr.select do |hsh|
  hsh.values.all? do |array|
    array.all?(&:even?)
  end
end

p all_even_integers
