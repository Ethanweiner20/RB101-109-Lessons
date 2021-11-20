## Working with Blocks

# Example 1

```ruby
[[1, 2], [3, 4]].each do |arr|
  puts arr.first
end
# 1
# 3
# => [[1, 2], [3, 4]]
```

We iterate through the outer array with Array#each. #each passes each element (an inner array) of the array into the block as a block parameter named `arr`. On each iteration, we print the first element of `arr`, which points to the current element, which is an array. So we print 1 and 3, respectively. #each returns the collection on which it was called, so [[1, 2], [3, 4]] is returned.

# Example 2

```ruby
[[1, 2], [3, 4]].map do |arr|
  puts arr.first
end
# 1
# 3
# => [nil, nil]
```

We iterate through the outer array with Array#map. #map passes each element (an inner array) of the array into the block as a block parameter named `arr`. On each iteration, the block performs two actions:
- Prints the value of the element at index 0 in the inner array
- Returns nil, because #puts has a return value of nil

Therefore, the block prints 1 and 3 and returns nil twice. Unlike #each, #map uses the return value of the block by constructing a new array with elements indicated by that return value. #map returns this new, transformed array, which is [nil, nil].

# Example 3

```ruby
[[1, 2], [3, 4]].map do |arr|
  puts arr.first
  arr.first
end
# 1
# 3
# => [1, 3]
```

Breakdown:
- *Array#map*
  - Object: The outer array
  - Return value: A transformed array: [1, 3]
  - Usage of return value: none
  - Side effects: Prints the value of arr.first: 1, 3
  - *Block passed into #map*
    - Object: Each sub-array
    - Return value: The first element of the sub-array
    - Usage of return value: Used by map for transformation
    - Side effects: Prints the value of arr.first once
    - *puts*
      - ...
      - *arr.first* ...
    - *arr.first*:
      ...
      
# Example 4

Summary:
For each array:
- Iterate through the array:
  - Print the element if it is greater than 5
  - Return nil

Output:
18
7
12

Value of my_arr: [[18, 7], [3, 12]]

Breakdown:
- *Variable assignment*:
  - Object: `my_arr`
  - Side effect(s): None
  - Return value: The value of the assigned object
  - Usage of return value: None
- *Outer `each` call*:
  - Object: Outer array
  - Side effect(s): None
  - Return value: The outer array (original object)
  - Usage of return value: Yes, it is assigned to `my_arr`
  - *Outer block execution*:
    - Object: Each sub-array
    - Side effect(s): None
    - Return value: Each sub-array
    - Usage of return value: None
    - *Inner `each` call*:
      - Object: Inner array (block parameter)
      - Side effect(s): None
      - Return value: The inner array (self)
      - Usage of return value: Yes, used to determine the return value of the outer block
      - *Block execution*:
        - Object: Each number element of the inner array
        - Side effect(s): None
        - Return value: nil
        - Usage of return value: None
        - *if expression*:
          - Object: The result of the comparison
          - Side effect(s): None
          - Return value: nil
          - Usage of return value: Determines the return value of the inner block
          - *Comparison*:
            - Object: Each number element of the inner array
            - Side effect(s): None
            - Return value: Boolean (whether the number is greater than 5)
            - Usage of return value: Yes, evaluated by `if`
          - *puts method call*:
            - Object: Each number element of the inner array
            - Side effect(s): Display the number if it's greater than 5
            - Return value: nil (whether or not it enters conditional)
            - Usage of return value: Determines the return value of `if` expression if entered


# Example 5

```ruby
[[1, 2], [3, 4]].map do |arr|
  arr.map do |num|
    num * 2
  end
end

# Output: None
# => [[2, 4], [6, 8]]
```

Summary:
- For each sub-array, return a new array in which each element is doubled
- Use this new array to map elements of the outer array

Output: None

- *Outer call to `#map`*:
  - Object: [[1, 2], [3, 4]]
  - Side effect(s): None
  - Return value: A transformed array
  - Usage of return value: None
  - *Outer block execution*:
    - Object: Each sub-array
    - Side effect(s): None
    - Return value: A transformed array
    - Usage of return value: Used by the outer #map for transformation
    - *Inner call to `#map`*:
      - Object: Sub-array
      - Side effect(s): None
      - Return value: A transformed sub-array
      - Usage of return value: Used to determine the return value of the outer
      block
      - *Inner block execution*:
        - Object: Each element of the sub-array
        - Side effect(s): None
        - Return value: An integer
        - Usage of return value: Used by the inner#map call to transform each element
        - *Call to `*` with `num` and `2` as arguments*:
          - Object: Each number of the sub-array
          - Side effect(s): None
          - Return value: An integer
          - Usage of return value: Used to determine the return value of the inner block

# Example 6

```ruby
[{ a: 'ant', b: 'elephant' }, { c: 'cat' }].select do |hash|
  hash.all? do |key, value|
    value[0] == key.to_s
  end
end
# => [{ :c => "cat" }]
```

- By calling #select, we plan to return a new array with selected hashes from the outer array
- The truthiness of the return value of the outer block will determine which hashes are selected
- The return value of the outer block is determined by the return value of the #all? call
- #all? returns true if the return value of the inner block's return value truthy for every iteration
- The inner block returns true if the the first character of current value of the hash is equal to the key itself
- Therefore, #all? will return true for any hash whose keys match the first character of their corresponding value
- And #select selects only those hashes for which #all? returns true
- Thus the resulting array will only contain hashes whose keys match the first character of their corresponding value

If we used #any?, then the outer block would return true for hashes that have AT LEAST ONE key-value pair that meets the criteria (the key is equal to the first character of the value). All hashes that meet this criteria will be included in the array returned by select. In this example, both hashes in the array have at least one key-value pair of this nature.

# Example 7
```ruby
arr.sort_by do |sub_arr|
  sub_arr.map do |num|
    num.to_i
  end
end
# => [["1", "8", "9"], ["1", "8", "11"], ["2", "6", "13"], ["2", "12", "15"]]
```

We are telling #sort_by to avoid sorting via comparison of the default sub-arrays, which consist of strings. Instead we tell #sort_by to compare with a transformed array that consists of the integer versions of the strings. Thus, when the element-wise sorting of the sub-arrays take place, #sort_by compares numerical values, not string values. #sort_by still returns the original string sub-arrays though; it merely uses the transformedsub-arrays for sorting purposes. No mutation takes place because #sort_by does not use the return value of its block for mutation, and we use the non-destructive version of map, #map to transform the elements for sorting purposes.

# Example 8

```ruby
[[8, 13, 27], ['apple', 'banana', 'cantaloupe']].map do |arr|
  arr.select do |item|
    if item.to_s.to_i == item    # if it's an integer
      item > 13
    else
      item.size < 6
    end
  end
end
# => [[27], ["apple"]]
```

# Example 9
```ruby
[[[1], [2], [3], [4]], [['a'], ['b'], ['c']]].map do |element1|
  element1.each do |element2|
    element2.reverse!
    element2.partition do |element3|
      element3.size > 0
    end
  end
end

# => [[[1], [2], [3], [4]], [['a'], ['b'], ['c']]]
```

- We are mapping the 2-element outer array to a new 2-element array, whose values are those returned by the outer block
- The return value of the outer block is determined by the call to #each, which will return its caller. In this case, its caller is `element1`, which each first-level sub-array in the outer array. Therefore, the final return value of #map will only be different if this sub-array (or its inner arrays) are mutated.
- From here, we can just look to see if there are any instances where each sub-array (or its inner arrays) are mutated
  - #partition is non-destructive. It simply returns a sub-array of 2 new-arrays.
  - #size is non-destructive. It simply returns the size of a collection.
- Since there are no instances where the sub-arrays are mutated or reassigned within the #each block, #each itself will return the each sub-array (`element1`) unmodified
- So #map does not result in any transformation. 

# Example 10

```ruby
[[[1, 2], [3, 4]], [5, 6]].map do |arr|
  arr.map do |el|
    if el.to_s.size == 1    # it's an integer
      el + 1
    else                    # it's an array
      el.map do |n|
        n + 1
      end
    end
  end
end

# => [[[2, 3], [4, 5]], [6, 7]]
```

- We are calling #map to transform the outer array
- The return value of the outer block is determined by calling #map on each sub-array
- The return value of the first inner #map is determined by the return value of the inner block
- The return value of the inner block is decided conditionally:
  - We first decide whether each element of the sub-array is an integer
    - If the size of its corresponding string is 1, we say that it is an integer
    - Otherwise, it's an array
  - If the elements in the sub-array are an integer, we return that integer to the inner block by adding 1
  - Otherwise, we return that sub-array with its NESTED arrays transformed by incrementing each number by 1
- The return value is passed to the first inner #map call, which transforms each sub-array
  - This return value with either be:
    - The sub-array with all its elements incremented by 1
    - The sub-array with all of its sub-arrays' elements incremented by 1  
- The return value of this inner #map call is the return value of the block, which the outer#map call uses
- So the transformed sub-arrays compose the array return value of the outer #map call, and now any numbers in the array are incremented by 1
- NOTE: The original nested structure of the array is maintained

- *Outer #map call*:
  - Object: Outer array
  - Side effect(s): None
  - Return value: The result of the transformation
  - Usage of return value: None
  - *Outer block*:
    - Object: arr block parameter (sub-array)
    - Side effect(s): None
    - Return value: The transformed sub-array
    - Usage of return value: Used to transform each element in the outer array with #map
    - *First inner #map call*:
      - Object: arr block parameter (sub-array)
      - Side effect(s): None
      - Return value: The result of the sub-array transformation
      - Usage of return value: Implicit return of the outer block
      - *Inner block execution*:
        - Object: Each element `el` of the sub-array `arr`
        - Side effect(s): None
        - Return value: The element transformed (either via incrementation or array transformation)
        - Usage of return value: Used to transform each element in the sub-array with #map
        ...
