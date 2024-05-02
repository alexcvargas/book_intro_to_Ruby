# Ruby Programming Essentials Series
# Variables as Pointers & Object Mutability in Ruby


# q2
# q3
# q4
# q5

# q1
# test_1.rb
x = 'a'
y = x
y = 'b'

puts "x = #{x}, y = #{y}"
# => x = a, y = b


# test_2.rb
x = 'a'
y = x
x = y.capitalize

# x => ?
# y => ?

puts "x = #{x}, y = #{y}"

# => x = X, y = X


# q1
# test_3.rb
x = 'a'
y = x
x = y.replace('b')

# x => ?
# y => ?

puts "x = #{x}, y = #{y}"
# => x = b, y = b


#   Variables
# In Ruby, variables act as pointers which reference single objects in memory


# reassign_1.rb
x = 'a'
y = x
z = y
y = 2

puts z

=begin
x                   'a'
y                   'a' (what x was)
z                   'a' (what y was)
y                    2
=end

# => a


# reassign_2.rb
x = 'a'
y = 'b'
z = [x, y]
y = 2

p z

=begin
x         "a"
y         "b"
z         ["a", "b"]
y         2
=end


# => ["a", "b"]


# reassign_3.rb
x = y
y = 'a'
z = 'b'
y = z

puts x

=begin
x        y
y        'a'
z        'b'
y        'b'
=end

# => error:  undefined local variable or method `y' for main:Object (NameError)
# the variable `y` hasn't been created in the program and it throws an error
# the variable `y` doesn't exist until you have defined it



#   Mutability
# In Ruby-some objects are mutable - meaning that they can be changed and modified
# Other objects are immutable -once created - they can't be altered
# Strings, Arrays, and Hashes are all mutable
# Numbers, Symbols, and Boolean values....and nil are all immutable
# Mutable objects can be mutated through the invocation of Mutating Methods

# We will use the method `object_id` to determine where in system storage our
#   objects are located
irb :001 > "hello".object_id
# => 8316480
irb :002 > "hello".object_id
# => 8342520
irb :003 > x = "howdy"
# => "howdy"
irb :004 > x.object_id
# => 8374320
irb :005 > y = x
# => "howdy"
irb :006 > y.object_id
# => 8374320
irb :007 > 3.object_id
# => 7
irb :008 > 3.object_id
# => 7
irb :009 > 3.object_id
# => 7
irb :010 > x = 5
# => 5
irb :011 > x.object_id
# => 11
irb :012 > y = 5
# => 5
irb :013 > y.object_id
# => 11
irb :014 > true.object_id
# => 20
irb :015 > true.object_id
# => 20
irb :016 > :hello.object_id
# => 1528988
irb :017 > :hello.object_id
# => 1528988
irb :018 > nil.object_id
# => 8
irb :019 > nil.object_id
# => 8

# talking about mutating objects
irb :001 > x = 'a'
# => "a"
irb :002 > x.object_id
# => 6757820
irb :003 > x = 'a'
# => "a"
irb :004 > x.upcase!
# => "A"
irb :005 > x
# => "A"
irb :006 > x.object_id
# => 6757820
irb :007 > x = 'a'
# => "a"
irb :008 > x.object_id
# => 6857040
irb :009 > x.upcase
# => "A"
irb :010 > x
# => "a"
irb :011 > x.object_id
# => 6857040

#   Mutating vs. Non-mutating Methods
# some methods mutate their caller or their arguments,
#   while others do not
# while the names of some mutating methods end with an !(upcase!, gsub!, etc.),
#   this is just a naming convention and can't be relied upon.
# in order to know if a method mutates the caller, you need to check the
#   documentation or experiment in IRB

#   Method Invocations
# Methods can only be invoked on objects - not on variables or other methods
# The object that the method is invoked upon is often called the calling object
# Some methods can be invoked with arguments, which are additional pieces
#   of data that influence what the method does.
# Only objects can be passed to methods as arguments - not variables or other methods.


x = "b"
"a".replace(x)
# This code is invoking the `replace` method on the object "a"
#   and passing in the object referenced by x as an argument.
# It is equivalent to:
"a".replace("b")



#   Return Values
# All methods have a return value, which itself is an object (String, Integer, Array, etc.)
# Usually(but not always), non-mutating methods have a "meaningful" return value
#   that is meant to be "used" in some way
# Mutating methods also have return values which are sometimes meaningful, but not always.
# Variables can be assigned to the return values of methods
# In order to know a method's return value, you need to check the documentation
#   or experiment in IRB

x = "a".upcase
# This code is assigning the return value of invoking the upcase method
#   on the String object "a" to the Variable x