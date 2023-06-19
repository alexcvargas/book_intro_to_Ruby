# Ch 1 The Basics

# Literals
#   A `literal` is any notation that lets you represent a fixed value in source code
#   For example: all of the following are literals in Ruby:
'Hello World'             # sring literal
375                       # integer literal
3.141528                  # float literal   
true                      # boolean literal    
{ 'a' => 1, 'b' => 2 }    # hash literal          
[ 1, 2, 3 ]               # array literal
:sym                      # symbol literal     
nil                       # nil literal


# Strings
#   A `string` is a list of char in a specific seq. Ruby can help  represent data
#   such as texas data (names, messages, and descriptions).

# Literals
#   You can write string literals with either single quotes
'hi there'  # or double quotes 
"hi there"  # on either side of the text.
#   NOTE: quotes are syntactic components and not a part of the value.
#   ...and both single and double quote formats create a string.

# Ex. 1: with double quotes
"The man said, 'Hi there!'"

# Ex. 2: with single quotes and escaping
'The man said, \'Hi there!\''   # The backslash, or escape ( \ ) character
#   tells the computer that the quotes that follow it are not meant as Ruby
#   syntax but only as simple quote chars to be included in the string.

# Double quotes allow something called `string interpolation`. See ex. below:
irb :001 > a = 'ten'
# => "ten"

irb :002 > "My favorite number is #{a}!"     # the #{a} part is string interpolation
# => "My favorite number is ten!"

# String interpolation is a handy way to merge Ruby code with strings.
# The basic syntax is: 
#{ruby expression goes here}  
# and the returned expression will be concatenated with the surrounding string.
# String interpolation only works within double quotes.


# Symbols
#   Ruby symbols are created by placing a colon ( : ) before a word.
#   the following are 3 examples of symbols
:name
:a_symbol
:"surprisingly, this is also a symbol"

#   Symbols don't have to be valid variable names if the symbol name is enclosed
#     in quotes, as the last example above demonstrates.
#   Basically as string is used when you want to reference something like a string
#     but don't ever intend to print it to the screen or change it.
#   It is often referred to as an immutable(i.e. unchangeable) string.
#   While not 100% technically correct, it's a useful mnemonic device for now.


# Numbers
#   Numbers are represented many ways in Ruby.
#   The most basic form of a number is called an integer(Whole #'s no decimals').
#   A more complex number is called a `float`. A `float` is a # that contains a decimal.
# For example:
# Example of integer literals
1, 2, 3, 50, 10, 4345098098

# Example of float literals:
1.2345, 2345.4267, 98.2234


# nil
#   In programming, we need a way to express "nothing", and in Ruby, we do this through `nil`.
#   A variable with a value of `nil` could be described as having 'nothing' or being
#   'completely empty', or even just simply 'not any specific type'.
#   A situation where this may occur is where output is expected but none is returned.
# example
irb :001 > puts "Hello, World!"
Hello, World!
=> nil

puts  # The `puts` method prints out a string and returns nothing, so we see
nil   # being returned after the string is displayed.
# You can explicitly refer to the `nil` value by using the `nil` literal in our code:
# It is possible to check if something is a nil type by using 
.nil?   
# For example:
irb :001 > "Hello, World".nil?
=> false

# An important property of the nil type is that when used in an expression,
#   such as an `if` statement, it will be treated as false, as it
#   represents an absence of content.
# example
irb :001 > if nil 
irb :002 > puts "Hello, World!"
irb :003 > end
=> nil
# In the example above, the return value (as shown by the hash rocket `=>` ) is 
nil   # and the code contained within the `if` is not run, as
nil   # is interpreted as being a false condition.

# But what if we did the following instead:
irb :001 > if 1
irb :002 > puts "Hello, World!"
irb :003 > end
Hello, World!
=> nil
# In the example above, since 1 is not "nothing" or a false value,
#   the code within the `if` statement is run and we see the output.
#   We'll talk more about conditionals later but remember that
nil   # can be used within a conditional statement, and will be treated as false.

# An important caveat to this - see the following example:
irb :001 > false == nil
=> false
# While both false and nil are treated as negative when evaluated in an expression,
#   they are not equivalent, as demonstrated by the above.


# Operations
#  Adding, Subracting, and Multiplying Integers
#   Basic mathematical operations in Ruby are quite simple.
#   To add two integers together just use the `+` operator as shown below in irb.
# Make sure to type these examples into irb and feel free to play with other integers as well.

# Addition
#  example
irb :001 > 1 + 1
=> 2

# Subtraction
#  example
irb :001 > 1 - 1
=> 0

# Multiplication
#  example
irb :001 > 4 * 4
=> 16


# Division
#   you can divide integers with the `/` operator
irb :001 > 16 / 4
=> 4

# Modulo
#   There is also an operator called the `modulo` operator... which is
#     represented by the `%` symbol. It can be referred to as the remainder operator
#     as well, though that is not strictly correct. 
# In modulo expressions,
# the value to the left of `%` is called the dividend 
                                                      % 
#                                                       and modulus is the vale to the right

#   When working with positive integers, the modulo operator returns the remainder
#     of a division operation.
# example
irb :001 > 16 % 4
=> 0

# different example
irb :001 > 16 % 5
=> 1
# Since 16/5 = 3 w/ remainder of 1...1 is what is returned.

# another example where integers don't divide evenly
irb :001 > 15 / 4
=> 3      # even though the more precise answer is 3.75
# When dividing integers , you will only receive an integer in return.
#   We want a different data type if we want more precision..i.e. floats.

# Difference between Modulo and Remainder
#   The `remainder` method computes and returns the remainder of an integer division operation:
# example
irb :001 > 16.remainder(5)
=> 1
# Hmm..that's the same result as 16 % 5. Howedver, you can't count on that always
#   being true...as you will see momentarily.


# There is also a `divmod` that computes both the integer result of the division and it's modulo value.
# example
irb :001 > 16.divmod(5)
=> [3, 1]

# The subtle difference between modulo and remainder operations are shown in the table below:
 a	    b	   a % b (modulo)	    a.remainder(b)	    a.divmod(b)
 17	   5	         2	 	              2	             [ 3,  2]
 17	  -5	        -3	 	              2	             [-4, -3]
-17	   5	         3		              -2              [-4,  3]
-17	  -5	        -2		              -2              [ 3, -2]
 
# Modulo operations return a positive integer when the second operand is positive,
#   and a negative integer when the second operand is negative.
# Remainder operations return a positive integer when the first operand is poisitve,
#   and a negative integer when the first operand is negative.
# When working with two positive integers, we don't need to worry whether we should use the
#   modulo operator or the remainder method b/c the return value is positive
#   and identical with the use of either operation.
# Try to avoid this potential confusing interaction by working
#   with positive integers exclusively.

# Some helpful numeric Ruby function definitions:
#                                                                               https://www.geeksforgeeks.org/ruby-numeric-ceil-function/?ref=gcse
ceil()  # is an inbuilt method in Ruby returns the smallest number 
#          which is greater than or equal to the given number 
#          by keeping a precision of n digits of the decimal part. 
# Syntax: num.ceil(n digits)
# Parameters: The function needs a number and n digits 
#  to which the precision of decimal digits is kept. 
#  In case no n digits is passed it takes 0 to be the default value. 
# Return Value: It returns the smallest number which is greater than 
#  or equal to the given number by keeping a precision of n digits of the decimal part.

#  Example_1
# Ruby program for ceil() method in Numeric:
# Initialize a number
num1 = -19
num2 = -18.97
num3 = 18.98
# Prints ceil() of num
puts num1.ceil()
# ==> -16.8
puts num2.ceil()
# ==> -17
puts num3.ceil()
# ==> 16

#  Example_2
# Ruby program for ceil() method in Numeric:
# Initialize a number
num1 = -19.897
num2 = -18.321
num3 = 190.23213
# Prints ceil() of num
puts num1.ceil(1)
# ==> -19.8
puts num2.ceil(2)
# ==> -18.32
puts num3.ceil(3)
# ==> 190.233

#                                                                               https://www.geeksforgeeks.org/ruby-numeric-floor-function/
floor()  # is an inbuilt method in Ruby returns a number less than 
#           or equal to the given number with a precision of the given number 
#           of digits after the decimal point. In case the number of digits 
#           is not given, the default value is taken to be zero.
# Syntax: num.floor(ndigits)
# Parameters: The function needs a number and ndigits which specifies the number of digits to be round off. If ndigits is not given then, default value is taken to be zero.
# Return Value: It returns returns a boolean value.

#  Example 1
# Ruby program for floor() method in Numeric:
# Initialize a number 
num1 = -16.7834
num2 = -16.78324
num3 = 16.873

# Prints floor
puts num1.floor(1)
# ==> -16.8
puts num2.floor()
# ==> -17
puts num3.floor()
# ==> 16

#  Example 2:
# Ruby program for floor() method in Numeric:
# Initialize a number
num1 = 12.32
num2 = -1321.998321
num3 = -12.2321
# Prints floor
puts num1.floor(1)
# ==> 12.3
puts num2.floor(2)
# ==> -1322.0
puts num3.floor(3)
# ==> 12.233

#                                                                               https://www.geeksforgeeks.org/ruby-numeric-truncate-function/
truncate()  # is an inbuilt method in Ruby returns a number rounded toward zero 
#              with a precision of the given number of digits after 
#              the decimal point. In case the number of digits is not given, 
#              the default value is taken to be zero.
# Syntax: num.truncate(ndigits)

# Parameters: The function needs a number and ndigits which specifies 
#  the number of digits to be rounded off. If ndigits is not given, 
#  then the default value is taken to be zero.
# Return Value: It returns the rounded value.

# Example 1
# Ruby program for truncate() method in Numeric:
# Initialize a number 
num1 = -16.7834
num2 = -16.78324
num3 = 16.873
# Prints truncated value 
puts num1.truncate(1)
# ==> -16.7
puts num2.truncate()
# ==> -16
puts num3.truncate()
# ==> 16

# Example 2
# Ruby program for truncate() method in Numeric:
# Initialize a number
num1 = 12.32
num2 = -1321.998321
num3 = -12.2321
# Prints truncated value
puts num1.truncate(1)
# ==> 12.3
puts num2.truncate(2)
# ==> -1321.99
puts num3.truncate(3)
# ==> -12.232


# Some of these numeric methods are brought up to help explain that difference
#  in modulo and remainder operations when working with negative inputs.
#                                                                               https://ruby-doc.org/core-2.0.0/Numeric.html#method-i-remainder
# The following are the equations for each to help better explain the difference:
x.modulo(y) means x-y*(x/y).floor

x.remainder(y) means x-y*(x/y).truncate


# Multiplying and Dividing floats
# In order to get a more accurate calculation, we can use floats.
irb :001 > 15.0 / 4
=> 3.75

# Whenever you use a float in an operation, Ruby always returns a float,
#  even if one of the numbers is a plain integer.

# You can also multiply floats to do more complex multiplication.
irb :001 > 9.75 * 4.32
=> 42.120000000000005

# Equality Comparison
# When you want to test the equality of two things you can use the == operator
#  (read `==` as "is equal to" or, sometimes, as "equal equal").
# This compares the object on the left of the `==` with the object on the right
#  and returns either `true` or `false`.
#  `true` and `false` are called boolean values in most programming languages.

irb :001 > 4 == 4
=> true
irb :002 > 4 == 5
=> false

# You can use the `==` operator with strings as well.
irb :001 > 'foo' == 'foo'
=> true
irb :002 > 'foo' == 'bar'
=> false

# What happens when you type the following command in irb?
irb :001 > '4' == 4
=> false
# This comparison returns `false` because we are comparing 4 as an integer/string.
#  Because we are comparing two different types... the `==` operator returns 'false'.


# String Concatenation
#   String concatenation looks a lot like addition. Use the operator `+` to join strings.
# example
irb :001 > 'foo' + 'foo'
=> "foofoo"
irb :002 > 'foo' + 'bar'
=> "foobar"
irb :003 > '1' + '1'
=> "11"   
# since two strings are being joined...we get 11 and not 2

# The following is what happens when you try and concatenate a string with a number:
# example
irb :001 > 'one' + 1
#=> TypeError: no implicit conversion of Integer into String
#   from (irb):1:in `+'
#   from (irb):1
#   from /usr/local/rvm/rubies/ruby-3.2.0/bin/irb:16:in `<main>'
# We get an error message. The compiler complains that it can't implicitly convert
#   an integer into a string....so in this case, we cannot concat an `integer` & a `string`.


#   Type Conversion
# But what if we wanted to add a `String` to an `Integer`?
# Let's consider the user input string of '12' and we want to increment this by `2`.
# Since we cannot just add a string and an integer like this...we have to convert:

to_i  # Conversion of a `String` to a `Integer`.
# converting a string to an integer:
# example
irb :001 > '12'.to_i
=> 12
# You can see that this returns an `Integer`.
# There are also other useful conversion operators like `to_f' and `to_s`

irb :001 > '4'.to_i
=> 4
irb :002 > '4 hi there'.to_i
=> 4
irb :003 > 'hi there 4'.to_i
=> 0
irb :004 > '4'.to_f
=> 4.0
irb :005 > '4 hi there'.to_f
=> 4.0
irb :006 > 'hi there 4'.to_f
=> 0.0


#   Arrays
# An array is used to organize information into an ordered list.
# The list can be made up of strings, integers, floats, booleans,
#   or any other data type.
# In Ruby, an array literal is denoted by square brackets `[ ]`
# Inside the brackets you can create a list of elements separated by commas.
# example
irb :001 > [1, 2, 3, 4, 5]
=> [1, 2, 3, 4, 5]

# Each element in an array can be accessed via an index(which starts at 0).
# If we wanted only the first eleemnt in the array...we could do:
# example
irb :001 > [1, 2, 3, 4, 5][0]
=> 1

# Key thing about an array is that order matters..and elements can be 
#   retrieved by their index, which starts at 0.


#   Hashes(a.k.a. dictionary)
# Hashes are a set of key-value pairs.
# Hash literals are represented with curly braces `{ }`.
# A key-value pair is an association where a key is assigned a specific value.
# A hash consists of a key, usually represented by a symbol.
#   This symbol points to a value(denoted by a `=>`) of any data type.
# example
irb :001 > {:dog => 'barks'}
=> {:dog => 'barks'}

# The above is a single key-value pair.
# Like arrays, we can have multiple items in a hash if we separate them with commas,
#   but they will not necessarily be in any specific order.
# Adding more items to our hash...
# example cont...
irb :001 > {:dog => 'barks', :cat => 'meows', :pig => 'oinks'}
=> {:dog => 'barks', :cat => 'meows', :pig => 'oinks'}

# and if we wanted to find out the sound a cat makes ...we can retrieve a value by it's key:
irb :001 > {:dog => 'barks', :cat => 'meows', :pig => 'oinks'}[:cat]
=> {:dog => 'barks', :cat => 'meows', :pig => 'oinks'}
=> "meows"


#   Expressions and Return
# Every time you enter something into `irb` you will see the `=>` (aka hash rocket).
# What comes after the hash rocket(`=>`) is whatever your Ruby expression returned.
# When you type sommething within the irb prompt, you are creating an expression.
# An expression is anything that can be evaluated, and pretty much everything
#   in Ruby is an expression.
# An expression in Ruby always returns something even if that's an error message or `nil`.


#   puts vs return
# There can be a bit of confusion between `puts` and `return`.
puts  # method tells Ruby to print something to the screen.
# However, `puts` does not return what is printed to the screen.
# Expressions DO something, but they also RETURN something.
# The value returned is not necessarily the action that was performed.
# example:
irb :001 > puts 'stuff'
stuff
=> nil
# You can see that the word `stuff` was printed to the console and then a `nil`
#   which is Ruby's way of saying 'nothing' was returned.
# example:
a = puts "stuff"
puts a
# => stuff
# => 
# a is assigned to the value returned by `puts "stuff"', which is `nil`.
# Therefore, `puts a` results in `nil` being printed out.