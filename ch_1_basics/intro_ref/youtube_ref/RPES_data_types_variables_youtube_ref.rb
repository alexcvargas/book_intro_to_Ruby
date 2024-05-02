# Ruby Programming Essential Series
  # Data Types & Variables in Ruby
  
irb :001 > 'he said "hello" '
# => "he said \"hello\" "
#   the `\` is an escape character and allows ruby to ignore particular syntax
#     that could usually end the string.

# string concatenation with the `+` symbol

# a few useful methods below that can manipulate strings
irb :002 > 'hi'.upcase
# => "HI"
irb :003 > 'Bye'.downcase
# =>"bye"
irb :004 > 'flowers'.chop
# =>"flower"


# Basic data types:
'Hello, world!' # string
:sym            # symbol
375             # integer
3.141528        # float
nil             # nil
true            # boolean


# a general rule of thumb is that strings can be changed and symbols cannot

# Quiz 1 - Basic Data Types
# fill in the following True or False statements:
# q1.1 
4 == 4                # true
# q1.2 
4 =="4"               # false
# q1.3 
"yes" == 'yes'        # true
# q1.4 
false == nil          # false
# q1.5 
:fruit == 'fruit'     # false


#   Type conversions
# `.to_i` converts to an integer
# `.to_f` converts to a float
# `.to_s` converts to a string


irb :001 > "14".to_i
# => 14
irb :002 > "2.9".to_i
# => 2  # returns anything to the left of the decimal place
irb :003 > 2.9.to_i
# => 2
irb :004 > "1.4".to_f
# => 1.4
irb :005 > 6.to_f
# => 6.0
irb :006 > 1.to_s
# => "1"
irb :007 > 2.9.to_s
# => "2.9"
irb :008 > :symbol.to_s
# => "symbol"
irb :009 > :name.to_s
# => "name"


# Quiz 2 - Type Conversions
# q2.1 integer to integer
6.to_i                  # => 6
# q2.2 string to integer
'a'.to_i                # => 0
# q2.3 boolean to integer
true.to_i               # => error
# q2.4 integer to float
"6".to_f                # => 6.0
# q2.5 string to float
'b'.to_f                # => 0.0
# q2.6 boolean to float
false.to_f              # => error
# q2.7 boolean to string
false.to_s              # => "false"



#   Basic Data Structures
# Arrays and Hashes
# Arrays are an ordered list denoted by items inside of square brackets.
# Arrays have index values inside of the brackets denoted by a comma inside of the []

irb :001 > [1, 2, 3]
# => [1, 2, 3]
irb :002 > ['red', 'orange']
# => ["red", "orange"]
irb :003 > [nil, false, :name]
# => [nil, false, :name]
irb :004 > ['a', 'b', 'c'][0]
# => "a"


# Quiz 3 - Arrays
# q3.1 [1, 2, 3][1]                                                            # => 2
# q3.2 [1, 2, 3][3]                                                            # => nil
# q3.3 ['apple', 'banana']['0']                                                # => apple
# q3.4 ['apple', 'banana'][-1]                                                 # => nil
# q3.5 ['Bugs Bunny', 'Daffy Duck', ['Wile E. Coyote', 'Road Runner']][2]      # => ['Wile E. Coyote', 'Road Runner']
# q3.6 ['Bugs Bunny', 'Daffy Duck', ['Wile E. Coyote', 'Road Runner']][2][1]   # => Road Runner  



#   Hashes are denoted by curly brackets {}
# each pair inside contains a pair of key-value pairs
irb :001 > {:first => 1}
# => {:first=>1}
irb :002 > {:dog => 'barks', :cat => 'meows', :pig => 'oinks'}
# => {:dog=>"barks", :cat=>"meows", :pig=>"oinks"}
irb :003 > {1 => false, 'dog' => 1.3}
# => {1=>false, "dog"=>1.3}
# in arrays, we pass in the index value...in hashes, we pass in the key
irb :004 > {:dog => 'barks', :cat => 'meows', :pig => 'oinks'}{:cat}
# => "meows"


# Quiz 4 - Basic Data Structures
# Select the best data structure for the following scenarios:
# q4.1 A collection of heights in meters, e.g. 1.81, 1.79, 1.62, 1.54       # => array
# q4.2 A list of info. about a person, e.g. Bugs, Rabbit, 92 yrs, Single    # => hash
# q4.3 Book data, e.g. author, title, publisher                             # => hash
# q4.4 Shopping list, e.g. milk, chocolate, apples                          # => array



#   Variables
# Variables store info that can be used later in a program.
# Variables can be thought of as containers that contain information.


first_name = 'Bugs'
last_name = 'Bunny'
first_name + ' ' + last_name => 'Bugs Bunny'


# There are different types of variables
# local variables, contants, global variables, class variables, instance variables
#   and there are several different uses for each.
# variables come in different types and can at times point to the same object.



# Output vs. return
irb :001 > puts "Hello"
Hello
# => nil
irb :002 > a = 3
# => 3
irb :003 > b = 3
# => 3
puts (a == b)
true
# => nil

# puts always returns nil...in this example the output and the return are different

irb :004 > a = 1
# => 1
irb :005 > p 4
4
# => 4
irb :006 > print 4
4=> nil
# print will show the returned value but doesnt have a carriage return on the
#   return value that is nil just like puts.



# Quiz 5 - Output vs. Return
# q5.1
# What is output by this code?
puts 'Why you wascawwy wabbit!'
Why you wascawwy wabbit!    # answer to the question
# => nil

# q5.2
# What is returned by this code?
puts 'Why you wascawwy wabbit!'
Why you wascawwy wabbit!
# => nil                    # answer to the question

# q5.3
# If catchphrase = puts 'Meep! Meep!', what does this output?
puts catchphrase       
                            # answer to the question because you are essentially doing puts nil
# => nil
# NOTE: a variable that is assigned to an expression will always be assigned to whatever
#   that expression returns.

# q5.4
# If catchphrase = puts 'Meep! Meep!', what does this return?
puts catchphrase       
                            
# => nil                    # answer to the question

# q5.5
# What is output by this code?(see output value for answer)
marvin_age = 74
                           # answer to the question
# => 74

# q5.6
# What is returned by this code?
marvin_age = 74

# => 74                    # answer to the question



# Quiz 6 - Roundup answers
# q6.1 Which of these are basic data types in Ruby?
#   (you can select multiple answers)
# number
# integer -
# float -
#  text
# string -
# symbol -
# boolean -
# nil -

# q6.2
# What is returned?
:character.to_i
# => error

# q6.3
# What is returned?
true.to_s
# => "true"

# q6.4
# What would be the best data structure for this data?
# Car manufacturers: Ford, BMW, Skoda, Fiat
# array         # answer

# q6.5
# How would we reference the 'Tweety' element in this array?
# array = ['Speedy', 'Tweety', 'Sylvester']
array[1]       # answer

# q6.6
# How would we reference the value for the author key?
book = {:author => "Cressida Cowell", :title => "How to train a dragon"}
book[:author]

# q6.7
# What is returned?
3 == 3.0
# => true


# q6.8
# What is returned?
puts "Shhhh. Be vewy quiet, I'm hunting wabbits."
# Shhhh. Be vewy quiet, I'm hunting wabbits.
# => nil


# some other misc interations to note:

irb :001 > 'a'.to_i
# => 0
irb :002 > :a.to_i
# => error