def string_lengths_v1(sentence)
  strings = sentence.split

  strings.map { |chars| chars.length }
end

p string_lengths_v1('To be or not to be')

def string_lengths_v2(sentence)
  strings = sentence.split
  lengths = []

  strings.each do |string|
    lengths << string.size
  end
end

p string_lengths_v2('To be or not to be')

def string_lengths_v3(sentence)
  words = sentence.split
  word_lengths = []
  counter = 0

  while counter < words.size do
    word_lengths << words[counter].length
    counter += 1
  end

  word_lengths
end

p string_lengths_v3('To be or not to be')

def string_lengths_v4(sentence)
  strings = sentence.split
  lengths = []
  counter = 1

  until counter == strings.size do
    word_length = strings[counter - 1].length
    lengths.push(word_length)
    counter += 1
  end

  lengths
end

p string_lengths_v4('To be or not to be')

