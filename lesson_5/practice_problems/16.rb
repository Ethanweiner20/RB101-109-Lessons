# PROBLEM
# ============================================================================

=begin

- Input: None
- Output: A UUID
- A UUID is 32-hexadecimal-character string broken into 5 sections separated by
hyphens

=end

# EXAMPLES/TESTS
# ============================================================================

=begin

None

=end

# DATA STRUCTURE(s)
# ============================================================================

=begin

We don't really need an array here. We can just append each generated character
onto a string.

=end

# ALGORITHM
# ============================================================================

=begin

Solution 1:

- Create an array containing the section lengths
- Initialize an empty array to contain the sections
- For each section length, create a section
- Join the sections with a hyphen and return

Sub-problem: Generate a section

Given a _section_length_:
- Initialize an empty string
- Loop _section_length_times
  - Generate a random hexadecimal character
  - Append that random character to the empty string

Sub-problem: Generate a random hexadecimal character
- Sample from an array with the hexadecimal characters

=end

# CODE
# ============================================================================

UUID_SECTION_LENGTHS = [8, 4, 4, 4, 12]
HEXADECIMAL_CHARACTERS = ('0'..'9').to_a + ('a'..'f').to_a

def generate_uuid()
  sections = UUID_SECTION_LENGTHS.map do |length|
    create_section(length)
  end
  sections.join('-')
end

def create_section(length)
  section = ''
  length.times { section << random_hexadecimal_character() }
  section
end

def random_hexadecimal_character
  HEXADECIMAL_CHARACTERS.sample
end

puts generate_uuid()
