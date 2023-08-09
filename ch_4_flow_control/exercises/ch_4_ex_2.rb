# chapter 4 - exercise 2
# Write a method that takes a string as an argument.
# The method should return a new, all-caps version of the string, 
#   only if the string is longer than 10 characters.
# Example: change "hello world" to "HELLO WORLD".
# Hint: Ruby's string class has a few methods that would be helpful.
# Be sure to check out https://ruby-doc.org/3.2.0/String.html

def caps(string='')
  if string.length > 10
    string.upcase
  else
    string
  end
end

puts caps("one name")
puts caps("who are you seal?")
# puts caps() we added the ='' to the argument for caps() just in case there is
#   no string in the argument and the code is executed.
# This will prevent the error from showing up.

=begin
# The following is what I came up with but it is rather messy and confusing but still works
#puts "type only text and hit enter"
#words = gets.chomp.to_s

def count(words='')
  words.length
end

count(words="hello")

if (words.length > 10)
#  result if true:
  puts words.upcase!
else
# result if false:
  puts words
end
=end