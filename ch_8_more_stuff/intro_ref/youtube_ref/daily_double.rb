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
could also do this a different way by iterating over an array

# Algorithm changes:
    - create an array of all characters
    - iterate through
    
def crunch(str)
  result = ''
  
  str.split('').each do |char|
    result << char if char != result[-1]
  end
  
  result
end    
    
=end