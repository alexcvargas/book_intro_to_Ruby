#   Variables
# Variables are used to store info  to be ref and manipulated in a computer program.
# They also provide a way of labeling data with a descriptive name,
#   so our programs can be understood more clearly by the reader and ourselves.
# It is helpful to think of variables as containers that hold information.
# Their sole purpose is to label and store data in memory.
# This data can then be used throughout your program.

#   Assigning Value to Variables
# Naming variables is known as one of the most difficult tasks in computer programming.
# When you are naming variables, think hard about the names.
# Try your best to make sure that the name you assign your variable is accurately
#   descriptive and understandable to another reader.
# Sometimes that other reader is yourself when you revisit a program that you
#   wrote months or even years earlier.

# When you assign a variable, you use the `=` symbol.
                                            =
# The name of the variable goes on the left and the value to store in it goes--> right.

# example
irb :001 > first_name = 'Joe'
=> "Joe"
# Here we've assigned the value 'Joe' which is a string to the variable `first_name`.
# Now if we want to reference that variable, we can...
irb :002 > first_name
=> "Joe"
# As you can see, we've now stored the string 'Joe' in memory for use throughout
#   the program.

# NOTE: make sure you don't confuse the assignment operator `=` 
#   with the equality operator `==`.
# The individual `=` symbol assigns value while the `==` symbol checks if two things are equal.

# example:
irb :001 > a = 4
=> 4
irb :002 > b = a
=> 4
irb :003 > a = 7
=> 7
irb :004 b
=> 4
# You'll notice that the value of `b` remains 4 while `a` was re-assigned to 7.
# This shows that variables point to values in memory, and are not deeply linked
#   to each other. If this is confusing now, don't worry, we'll have plenty of
# exercises for you to complete that will make this information clear and obvious.
# And when in doubt, always try it out in irb.

#   Getting data from a User
# Up until now, you've only been able to assign data to variables from within the program.
# However, in the wild, you'll want other people to interact with your programs
#   in interesting ways. 
# In order to do that, we have to allow the user to store information
#   in variables as well. Then we can decide what we'd like to do with that data.

# One way to get info from the user is to call the `gets` method.
# `gets` stands for "get string"
# When you use it, the program waits for the user to:
#   1) type in information
#   and
#   2) press the enter key.
# example:
irb :001 > name = gets
Bob
=> "Bob\n"

# After the code `name = gets` the computer waited for us to type in some info.
# We typed "Bob" and then pressed enter and the program returned "Bob\n".
# The `\n` at the end is the "newline" character and represents the enter key.
# But we don't want that as part of our string.
# We'll use `chomp` chained to `gets` to get rid of that
#   you can put `.chomp` after any string to remove the carriage return chars at the end.

irb :001 > name = gets.chomp
Bob
=> "Bob"

# There we go! That's much prettier. Now we can use the `name` variable as we so please.
# example:
irb :001 > name = gets.chomp
Bob
=> "Bob"
irb :002 > name + ' is super great!'
=> "Bob is super great!"


#   Variable Scope
# A variable's scope determines where in a program a avariable is available for use.
# In Ruby, variable scope is defined by a method definition or by a block.
# They have different behaviors when it comes to variable scope.

#   Variable Scope and Method Definitions
# We'll learn about methods in the next chapter. For now you can think of methods
#   as pieces of reusable code that your program can execute many times during its run.
# example:
name = 'Somebody Else'

def print_full_name(first_name, last_name)
  name = first_name + ' ' + last_name
  puts name
end

# Once we have the method defined, we can call it as many times as we need
#   with different values for `first_name` and `last_name`
# example:
print_full_name 'Peter', 'Henry'   # prints Peter Henry
print_full_name 'Lynn', 'Blake'    # prints Lynn Blake
print_full_name 'Kim', 'Johansson' # prints Kim Johansson
puts name                          # prints Sombody Else

# In terms of variable scope, methods have self-contained scope.
# That means that only vars initialized within the method's body can be referenced
#   or modified from within the method's body.
# Moreover, vars initialized inside a method's body aren't avail outside the method's body.
# Analogy: a bit like an impenetrable bubble...
# Thus, in the above code, we can't use or change the `name` variable from line 1
# from inside the `print_full_name` method.
# We can, however, create and use a different `name` variable that is 
#   locally scoped to the method.
# That is why lines 4 and 5 work without changing the value of `name` from line 1.


#   Variable Scope and Blocks
# A block is a piece of code that follows a method's invocation, delimited by
#   either curly braces `{}` or `do/end`
# example
total = 0
[1, 2, 3].each { |number| total += number }
puts total
# => 6

# example
total = 0
[1, 2, 3].each do |number|
  total += number
end
puts total
# => 6

# In the examples above, 
{ |number| ... }  # is a block, as is 
do |number| 
  ... 
end
# Though they look different, the behavior is identical.
# In both cases, the code can access and modify vars defined outside of the block.
# Thus, both blocks can access and modify `total`
# However, any vars initialized inside the block (such as `number`)
#   can't be accessed by the outer code.

# With blocks, the one rule that we want to emphasize is that:
#   inner scope can access vars init'd in an outer scope, but not visa versa.

# example:
# scope.rb

a = 5           # variable is init'd in the outer scope

3.times do |n|  # method invocation with a block
  a = 3         # is accessible here, in an inner scope?
end

puts a
# => 3
# The value of `a` is 3.
# This is because `a` is available to the inner scope created by
3.times do |n|
  ...
end
# which allowed the code to re-assign the value of `a`
# In fact, it re-assigned it three times to 3.

# Note that blocks can also be written with curly braces, though common
#   practice is to only use them for one-liners: the method call
#   and the block must fit on the same line.
# For instance, here's the `times` loop from above rewritten using braces:

3.times { |n| a = 3 }
# Curly brace blocks are identical to `do...end` blocks in terms of scope.

# changing the original `scope.rb` code:
# example
# scope.rb
a = 5
3.times do |n|    # method invocation with a block
  a = 3
  b = 5           # b is intitialized in the inner scope
end

puts a
puts b            # is b accessible here, in the outer scope?

# we get an error to the tune of:
# => scope.rb:11:in `<main>': undefined local variable or method `b' for main:Object
# => (NameError)

# We get this error because `b` is not avail outside the method of invocation
#   with a block wehre it is intit'd.
# When we call `puts b` it is not avail within that outer scope.

# Not all `do ...end` pairs imply a block.
# We will explore this in much greater detail in later courses.
# In particular, a `do ..end` on a `for` or `while` loop is not a block.

# Put another way, the key distinguishing factor for deciding whether code 
#   delimited by `{}` or `do/end` is considered a block(and thereby creates
#   a new scope for variables), is seeing if the `{}` or `do/end`
#   immediately follows a method invocation.

# example:
arr = [1, 2, 3]

for i in arr do
  a = 5     # a is intialized here
end

puts a      # is it accessible here?
# => 5

# Yes, the `for...do/end` code did not create a new inner scope.
# Since `for` is part of Ruby language and not a method invocation.
# When you use `each`, `times`, and other method invocations,
#   followed by `{}` or `do/end`, that's when a new block is created.


#   Types of Variables
# Before we move on, you should be aware that there are 5 types of variables.
#   1.Constants         (MY_CONSTANT)
#   2.Global Variables  ($var)
#   3.Class Variables   (@@)
#   4.Instance Variables (@)
#   5.Local Variables (no caps, no @ or @@...just var)

#   1.Constants
# Constants are declared by capitalizing every letter in the variable's name,
#   per Ruby convention.
# They are used for storing data that never needs to changes.
# While most programming languages do not allow you to change the value
#   assigned to a constant, Ruby does.
# It will however throw a warning letting you know that there was a previous
#   definition for that variable.
# Just because you can, doesn't mean that you should change the value.
# In fact, you should not.
# Constants cannot be declared in method definitions, and are avail
#   throughout your app's scopes.
# example
MY_CONSTANT = 'I am available through your application.'

#   2.Global variables 
# Global vars are declared by starting the variable name with the dollar sign
$ # These variables are available throughout your entier app, overriding all
# scope boundaries. Rubyists tend to stay away from global vars as there can
#   be unexpected complications when using them.
# example:
$var = 'I am also available throughout your app'

#   3.Class variables
# Class vars are declared by starting the variable name with two @@ signs.
# These variables are accessible by instances of your class, as well as the class itself.
# When you need to declare a variable that is related to a class,
#   but each instance of that class does not need its own value for this variable, 
#   you use a class var.
# example:
@@instances = 0

#   4.Instance variables
# Instance variables are declared by starting the variable name with one `@` sign.
# These variables are avail throughout the current instance of the parent class.
# Instance vars can cross some scope boundaries, but not all of them.
# You'll learn more when we get to OOP topics, and you shouldn't use them until
#   you know more about them.
# example:
@var = 'I am avail throughout the current instance of this class'

#   5.Local variables
# Local variables are the most common variables you will come across
#   and obey all scope boundaries.
# These variables are declared by starting the variable name
#   with neither `$` nor `$` as well as not capitalizing the entire variable name.
# example:
var = 'I must be passed around to cross scope boundaries.'

#   Summary:
# In this chapter, we talked about how to use vars to store info for later use.
#   and how to get information from a user.
# We also showed that not all vars are created equal and that the scope in which
#   a variable is defined changes its avail throughout the program.
# Now that you know the different types of vars and how to use them, let's put
#   some of that knowledge into practice with some exercises.

