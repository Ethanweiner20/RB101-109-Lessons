## PROBLEM

Sequence: [2, 4, 6, 8...]

n:1  2 => 2        [1 ele]
n:2  4 6 => 10     [2 ele]
n:3  8 10 12 => 30 [3 ele]
n:4  14 16 18 20 => 68
...

*Explicit Requirements*:
- **Input**: A _row_ number
- **Output**: Sum of all integers in _row_
- Each row contains 1 more integer than the previous
- Each row has consecutive integers, even only
- Each row starts after the end of the previous row
- _row_ equals the # of elements in that row

*Questions*:
- Does each row restart at 2? No
- Are rows zero-index? (i.e. is the first row zero) No (they are 1index)
- Can we assume _row_ to be a non-negative integer?

*Mental Model #1*: Construct this structure as a hash with the 
appropriate # of rows. 

*Mental Model #2*: Peform some sort of mathematical solution to retrieve the row 
sum without needing to construct a data structure. Compute the starting integer
in the row. Try to find some pattern.


## EXAMPLES/TESTS

row 1 => 2
row 2 => 10
row 4 => 68

## DATA STRUCTURES

We need a data structure that can:
- Store multiple rows
- Each row contains a # of integers

A nested array makes sense here:

```ruby
[
  [2],
  [4, 6],
  ...
]
```

## ALGORITHM

*Solution 1 (brute force)*

Given a row number _n_:

rows = empty array
row_start = 2

Iterate from 1 to to _n_:
  Build a row whose size is the current row #, starting at row_start
  Set row_start to the final row in this row

Sum the integers in the final row
Return this sum

*Sub-Problems*:

# -----------------------
# PROBLEM

Input: _row_size_, _starting_index_
Ouput: The row

# EXAMPLES

- start: 8, size: 3 => [8, 10, 12]


# ALGORITHM

Initialize an empty array
Initialize an element placeholder variable to row_start

Iterate from 1 to row_size
  Add the element placeholder to the empty arrow
  Increment this element placeholder by 2

Return the array

# -----------------------


## CODE

*Implementation Details*: