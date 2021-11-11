famous_words = "seven years ago..."
prefix = "Four score and "

# Solution 1
famous_words = prefix + famous_words

# Solution 2
famous_words = "#{prefix}#{famouse_words}"

# Solution 3 (best)
famous_words.prepend(prefix)

# Solution 4
famous_words = prefix.concat(famous_words)