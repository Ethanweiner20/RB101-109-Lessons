hsh = {
  'grape' => {type: 'fruit', colors: ['red', 'green'], size: 'small'},
  'carrot' => {type: 'vegetable', colors: ['orange'], size: 'medium'},
  'apple' => {type: 'fruit', colors: ['red', 'green'], size: 'medium'},
  'apricot' => {type: 'fruit', colors: ['orange'], size: 'medium'},
  'marrow' => {type: 'vegetable', colors: ['green'], size: 'large'},
}

=begin

Solution 1:
- Iterate over the hash with an array accumulator
- If the current food is a fruit, append the colors to the array
  - Transform the colors to capitalized versions
- If the current food is a vegetable, append the size to the array
  - Upcase the size
- Return the array accumulator

=end

foods = hsh.values.each_with_object([]) do |details, array|
  if details[:type] == 'fruit'
    array << details[:colors].map(&:capitalize)
  elsif details[:type] == 'vegetable'
    array << details[:size].upcase
  end
end

p foods

# Better

foods = hsh.values.map do |details|
  if details[:type] == 'fruit'
    details[:colors].map(&:capitalize)
  elsif details[:type] == 'vegetable'
    details[:size].upcase
  end
end

p foods