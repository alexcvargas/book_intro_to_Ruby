#   Ruby Programming Essentials Series
# Small Problems & Debugging in Ruby

# PEDAC Method to problem solving - what and why?
# P - understand the PROBLEM
# E - EXAMPLES & test cases
# D - DATA structure
# A - ALGORITHM
# C - CODE with intent


#daily_double.rb
# Write a method that takes a string argument and returns a new string
#   that contains the value of the original string with all
#   consecutive duplicate characters collapsed into a single character.
# You can not use the `String#squeeze` or `String#squeeze!` methods.

# examples:
=begin
crunch('ddaaiillyy ddoouubbllee') == 'daily double'
crunch('444abcabccba') == '4abcabcba'
crunch('a') == 'a'
crunch('') == ''



PEDAC
 PROBLEM:
   create a method that takes a string argument and outputs the following:
     the initial string argument is stripped of all consecutive duplicate chars
   resulting in just single characters from all those dups
     no use of `String#squeeze` or `String#squeeze!` methods.
   - Input: string object
   - A string with no duplicate consecutive characters
  - Rules:
     -Explicit:
        -you may not use the `String#squeeze` or `String#squeeze!` methods
        -output string must have the value of the original string with char's collapsed
        -returns a new string
        - return string, not output or print
     - Implicit:
     - Only need to consider duplicate letters + numbers
      - If no duplicate values, return original string
      - Can we modify the original object? (i.e. mutate input?)

 - EXAMPLES & test cases
   - for examples...see above
   - crunch('444abcabccba') == '4abcabcba'

 - DATA structure
     - Array(?)


 - Algorithm
     - Define a method called crunch that has one parameter 'str'
     - Create a new string to build
     - Iterate through all characters of INPUT string
       - Search for unique values
       - Push each character to new string if it doesn't match
         the previous character in new string
     - Return the new string
=end

# - Code
def crunch(str)
  result = ''
  
  str.each_char do |char|
    result << char if char != result[-1]
  end
  
  result
end

p crunch('ddaaiillyy ddoouubbllee') == 'daily double'
p crunch('444abcabccba') == '4abcabcba'
p crunch('a') == 'a'
p crunch('') == ''


# => true
# => true
# => true
# => true


=begin
What do I do when my code doesn't work?

 Guidelines for Debugging
    1. Develop the right temperament
    2. Compare the expected outcome to the actual outcome
    3. Isolate the error
    4. Utilize the appropriate tool
    5. Step away if you need to
=end



#debug.rb

=begin
Define a method that accepts a multi-word strong as an argument, and returns a
  version of that string with each word reversed
The method should maintain the position of commas between words and any
  punctuation on the end of the string

TEST CASES
word_reverse("Howdy howdy howdy") == "ydwoH ydwoh ydwoh"
word_reverse("Reverse Word!") == "esreveR droW!"
word_reverse("Hello, World") == "olleH dlroW"
word_reverse("Hey Bob, are you there?") == "yeH boB, era uoy ereht?"
word_reverse("Can't stop, won't stop!") == "t'naC pots, t'now pots!"

PEDAC
 Problem
  - Input
    - Multi-word string
  - Output
    - A version of that string with each word reversed in place, maintaining position of punctuation
  - Rules
    - Explicit:
      - Commas and punctuation at the end of words should not move
      - Input string will contain more than one word
    - Implicit:
      - Letter case should be maintained
      - Apostrophies in the middle of words should move like other characters
      - Does not need to account for numbers
      - The input string can be modified
  - Algorithm
    - Separate string into an array of words
    - Iterate through array of words, reversing each word
    - If word now starts with punctuation, move it back to the end
      - Iterate through array of reversed words, checking to see if the first
        character is a punctuation
          -If so, remove the first character and add it to the end
=end


def separate_words(string)
  string.split(' ')
end

def reverse_words(word_arr)
  word_arr.map! { |word| word.reverse }
end

def correct_punctuation(word_arr)
  word_arr.map do |word|
    if (/[,.!?]/).match?(word[0])   # If the reversed word starts with punctuation
      word + word.slice!(0)         # Move the punctuation to the end of the word
    else
      word
    end
  end
end

def word_reverse(string)
  word_arr = separate_words(string)
  reverse_words(word_arr)             # returns the right value
  correct_punctuation(word_arr).join(' ')
end

p word_reverse("Howdy howdy howdy") == "ydwoH ydwoh ydwoh"
p word_reverse("Reverse Word!") == "esreveR droW!"
p word_reverse("Hello, World") == "olleH, dlroW"
p word_reverse("Hey Bob, are you there?") == "yeH boB, era uoy ereht?"
p word_reverse("Can't stop, won't stop!") == "t'naC pots, t'now pots!"


# => true
# => true
# => true
# => true
# => true