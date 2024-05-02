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