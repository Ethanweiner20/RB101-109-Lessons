# Question 2

=begin

a. The conditional is incorrect: it is asking if the index is odd -- not the #
itself

=end

# Question 3**

=begin

b. The counter will not index `numbers` properly. Upon finishing one loop cycle,
the counter has been modified by the inner loop, which outputs #s from 1 to
the current number. So the counter is equal to the number just evaluated
plus 1, and is being used to index to the number. 

d.*** #times uses a block, and blocks define a new scope. So the `counter` in
the #times block shadows the `counter` in the outer scope. Counter in the outer
scope itself is not modified. Instead, `counter+=1` defines a new local variable
within the scope of #times. So on each iteration, counter is simply being set to
the 0 + 1 = 1, which will result in printing 1 "number" times for each number.

=end

# Question 4

=begin

Because line 3 initializes the first index to 1, the word at index 0 is never
downcased.

=end

# Question 5

=begin

The loop condition results in the loop never being executed, because the counter
variable can NEVER be greater than words.size (0 >/ [0,))

=end

# Question 6

=begin

The word at index 0 is never upcased because the index is incremented by 1
immediately upon entering the loop.

=end

# Question 7

=begin

Corrections:

b. #each will return the original hash itself

=end

# Question 8

=begin

Corrections:

a. Select would return an empty array.
c. Select always returns a new array.

=end

# Question 9

=begin

Corrections: 

a. It would return an array of nils
d. When map is called on a Hash, it calls Enumerable#map (b/c Hash#map doesn't
exist), which returns an array (not a hash).

=end

# Question 10

=begin

The following criteria must be met for it to be selection:
- There is a selection criteria that decides whether elements stay in the array

Why wrong?
a. The elements in the array are being transformed.
c???? Selection is occurring, but there is no reassignment here, so the results
of the value are simply lost.
d. Transformed version of the elements are outputted -- there is no selection
going on here.

=end

# Question 11

=begin

Why right?
b. No transformation occurs
c. The stars array isn't transformed; #downcase is simply called on each `star`.
Its return value is not used in any useful way to transform the array.


=end

# Question 17

flavors = ['chocolate', 'strawberry', 'mint', 'vanilla']
flavors.reject { |flavor| puts flavor }

=begin

The block returns nil every element, so the method rejects no elements,
and returns a new array containing all elements from the original array.

=end

# Question 18

=begin

Why wrong?
d. The arrays are assigned in the wrong order. The odd numbers are assigned
to the partition for the even numbers, and vice versa.

=end

# Question 19

=begin

Why wrong?
a. The `country` block parameter is actually referring to the value, which is
the capital.
d.?? #find_all is an alias for Enumerable#select. But Enumerable#select returns
an array, not a hash. This is tricky, because Hash#select returns a hash. But
Enumerable#select does not.

=end

# Question 20

=begin

What does this code do?
- Transforms the leads by capitalizing their names
  - Iterates over each name in full_name and capitalizes each
- Selects only those leads whose last login < 60 and are subscribed to list

Why wrong?
a. This only capitalizes the first letter of the full names. It doesn't
capitalize every name in a full name.
b. There is a very minor discrepancy here. Those who have logged in exactly
60 days ago will be included, but we only want to include those who have 
logged in less than 60 days ago.
c. The logic is incorrect. This eliminates only those leads who haven't logged
in in a while AND aren't subscribed. But we want to eliminate leads who meet
EITHER of those criteria (i.e. keep only the leads who have logged in recently
and are subscribed). We would need to change our logic operation to ||. 

=end

numbers = [7, 3, 5, 2, 1, 8, 4]

numbers.each do |number|
  counter = 0
  number.times do
    counter += 1
    puts counter
  end
end

# So, the counter variable DOES refer to the outer scope variable. You can only
# shadow a variable by introducing it as a parameter -- assignment does not
# result in shadowing.