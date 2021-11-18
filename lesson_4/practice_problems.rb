# Practice Problems: Methods and More Methods

[1, 2, 3].select do |num|
  num > 5
  'hi'
end

=begin

The return value is [1, 2, 3]. #select returns a new array containing all the
elements in the caller array that pass a selection criteria. This selection
criteria is defined by the truthiness of the return value of the block argument
to #select. In this instance, the block's return value is 'hi', which is truthy.
So every element in [1, 2, 3] is selected.

=end

['ant', 'bat', 'caterpillar'].count do |str|
  str.length < 4
end

=begin

#count uses the return value of the block to decide whether to increment the
count for a given element. If the block returns a truthy value, that value
is included in the countr. The return value of the provided example should
be 2, because there are 2 elements in the caller array which pass the criteria
specified by the block. In a sense, this block defines a selection criteria.

If we didn't know about #count, we could use the Ruby docs.

=end

[1, 2, 3].reject do |num|
  puts num
end

=begin

Array#reject is essentially the compliment of Array#select: its return value
excludes all elements for which the block returns a truthy value, and includes
all elements for which the block returns a falsey value (it "rejects" any
elements that pass the selection criteria in the block). Since the selection
criteria of the given block will always return nil (#puts always returns nil),
all of the elements will be included in the return value of #reject: [1, 2, 3].

=end

['ant', 'bear', 'cat'].each_with_object({}) do |value, hash|
  hash[value[0]] = value
end

=begin

hash["a"] = "ant"
...

The return value is:
{
  "a" => "ant",
  "b" => "bear",
  "c" => "cat"
}

#each_with_object iterates over an Array, modifying the object argument within
the block. It returns that object once the iteration is complete. In this
instance, the object is initialized to a hash, and on each iteration, a
key-value pair is inserted into the hash whose key is the first character of the
current element, and whose value is the value of the current element (a string).

=end

hash = { a: 'ant', b: 'bear' }
hash.shift

=begin

We can find out by searching the Ruby docs to see if the Hash object has an
instance method Hash#shift. If it does, then we can inspect its functionality.
Otherwise, Ruby will throw an error signifying that the #shift method does not
exist for the given caller.

In this case, the method does exist. #shift will remove the first element in the
Hash: the a: 'ant' key-value pair. This action is destructive. #shift itself
returns the removed value as a 2-item array.

=end

['ant', 'bear', 'caterpillar'].pop.size

=begin

11

Without an argument, #pop will try to remove and return the last element in the
array. 'caterpillar' is the last element in the array, so it is removed from the
array and returned to the #pop method. #size is called on the return value of
#pop, which we esstablished to be 'caterpillar'. String#size is an existing
method which returns the length of the String caller.

=end

[1, 2, 3].any? do |num|
  puts num
  num.odd?
end

=begin

The block's return value is the evaluation of num.odd? for each element in the
array. In order of the elements, this returns true, false, and true. The return
value of #any? is a Boolean. #any? returns true if the block returns a truthy
value for any of the elements in the caller. In this instance, 1 and 3 meet this
criteria, so the return value is true. Additionally, #any? outputs:

1

This is because once #any? finds a block for which the return value is truthy,
#any? is guaranteed to evaluate to #true, and so can short-circuit and avoid
needing to evaluate the block for the rest of the elements. So the call to puts
is only made once, because the first value in the array results in a truthy
block return value.

=end

arr = [1, 2, 3, 4, 5]
arr.take(2)

=begin

Per usual, we can find all this out with the help of Ruby documentation.
Array#take returns a new array containing the first _n_ elements from the array,
where _n_ is the integer argument into #take. It is non-destructive. 

So the return value is: [1, 2], and `arr` is not modified.

=end

{ a: 'ant', b: 'bear' }.map do |key, value|
  if value.size > 3
    value
  end
end

=begin

Return value:
[nil, 'bear']

Enumerable#map transforms every element in the given collection, as specified
by the transformation criteria of the block. The return value is an array with
the transformed elements. The transformation criteria is defined by the return
value of the block, which is the last line evaluated in the block (without an
explicit return). For the first key-value pair, the if statement is the last
evaluated expression in the block, which returns `nil`. For the second key-value
pair, the condition is met, so the last evaluated expression is `value`, which
returns 'bear'. So the hash is mapped to [nil, 'bear'].

ASK QUESTION ABOUT EXPRESSION VS RETURN VALUE

=end

[1, 2, 3].map do |num|
  if num > 1
    puts num
  else
    num
  end
end

=begin

Return value: [1, nil, nil].

For the first element, block's return value is 1 because the if-else expression
evaluates to 1. 

=end

