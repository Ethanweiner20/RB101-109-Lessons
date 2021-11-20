hsh = {first: ['the', 'quick'], second: ['brown', 'fox'],
       third: ['jumped'], fourth: ['over', 'the', 'lazy', 'dog']}

def output_vowels(string)
  string.each_char { |char| puts char if char =~ /[aeiou]/i }
end

hsh.each do |_, strings|
  strings.each { |string| output_vowels(string) }
end
