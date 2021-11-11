title = "Flintstone Family Members"

# Pseudocode

=begin

LENGTH = 40

margins = 40 - title.length

Append half the margins to either side of string

=end

PAGE_WIDTH = 40

margin_width = (PAGE_WIDTH - title.length) / 2
margin = ' ' * margin_width

puts margin + title + margin
puts '=' * 40

# Easier way: Use String#center
