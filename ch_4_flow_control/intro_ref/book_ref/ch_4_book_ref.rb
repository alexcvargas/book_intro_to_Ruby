#   Ch_4 Flow Control
# In many ways, a computer program is like a journey for your data.
# Along this journey, data encounters many things that have an impact
#   on it and it's forever changed.
# Like any journey, one must travel a given path.
# On that path, there are many roads.
# Some roads are chosen and others not.
# Which roads are chosen depends on the end goal.

# When you are writing programs, you want your data to make the right decisions.
# You want your data to do the right thing when it's supposed to.
# In computer programming, this is called ##conditional flow##.

# How do we make data do the right thing? We use ##conditionals##.

#   Conditionals
# A conditional is a fork(or many forks) in the road.
# Your data approaches a conditional and the conditional then tells the data
#   where to go based on some defined parameters.
# Conditionals are formed using a combination of `if` statements and comparison
#   and logical operators
<   >   <=    >=    ==    !=    &&    ||
# They are basic logical structures that are defined with the reserved words:
if   else   elsif   end
# Note: that `elsif` is missing an "e"

# Create a file called `conditional.rb` and type the following code into it:
# conditional.rb

puts "Put in a number"
a = gets.chomp.to_i

if a == 3
  puts "a is 3"
elsif a == 4
  puts "a is 4"
else
  puts "a is neither 3, nor 4"
end


# if user input is 3
# => a is 3

# if user input is 4
# => a is4

# if user input is not 3 or 4
# => a is neither 3, nor 4

# Here we are using `gets` to let the user input a number,
#   `chomp` gets rid of the new line created when the user enters the data,
#   and `to_i` is a method that can be called on a string to turn it into an integer.
# We need to convert the input into an integer because `gets` always gives us a string.

# This code is doing is checking, using the `==` operator you learned previously,
#   to see if the input is equal to the number we have defined.
# We have effectively controlled the flow of the program by setting conditionals in
#   an `if` statement. Nice work!

# The examples below are all valid Ruby conditionals:
# example 1
if x == 3
  puts "x is 3"
end

# example 2
if x == 3
  puts "x is 3"
elsif x == 4
    puts "x is 4"
end
  
# example 3
if x == 3
  puts "x is 3"
else
  puts "x is NOT 3"
end


# Example 4: must use "then" keyword when using 1-line syntax
if x == 3 then puts "x is 3" end
  
# Last, because Ruby is such an expressive language, it also allows you to
#   append the `if` condition at the very end.
# Example 1 from above could be rewritten like this:
puts "x is 3" if x == 3

# Ruby also has the reserved word, `unless`
# It acts as the opposite of `if`, so you can use it like this:
puts "x is NOT 3" unless x == 3


#   Comparisons
# Let's go over these comparison operators in a little more depth so you can 
#   build some more complicated conditional statements.
# One thing to remember is that comparison operators always return a boolean value.
# A ##boolean value## is either `true` or `false`, nothing else.
# We'll try them out in irb to see how they work as well.

# The expressions or values that an operator uses are its ##operands##.
# In comparisons, the expressions to the left and right of the operator
#   are the operands.

==  # 1. The "is equal to" operator.
# Anything to the left of the `==` symbol is exactly equal to anything on the right.
# We talked about this operator earlier in our chapter on variables
#   so it shouldn't totally be foreign.

# irb :001 >
5 == 5
# => true

# irb :002 >
5 == 6
# => false

# irb :003 >
'abc' == 'abc'
# => true

# irb :004 >
'abc' == 'abcd'
# => false

# irb :005 >
'abc' == 'aBc'
# => false

# irb :006 >
'5' == '5'
# => true

# irb :007 >
'5' == '6'
# => false

# irb :008 >
'5' == 5
# => false

# Notice how we compare strings for equality.
# To be equal, two strings must have the exact same value.
# The specific value doesn't matter, just that both have the same value.
# If there is any difference at all, the strings are not equal.

# We thew the last example in as a reminder that two values must have the same
#   type or they are not equal.
# Thus, the string '5' is not the same as the number '5'.
# The comparison is thus 'false'.


!=  # 2. The "not equal to" operator".
# Anything to the left of the symbol is not equal to anything on the right.
# irb :001 >
4 != 5
# => true

# irb :002 >
4 != 4
# => false

# irb :003 >
4 != 156
# => true

# irb :004 >
'abc' != 'def'
# => true

# irb :005 >
'abc' != 'aBc'
# => true

# irb :006 >
'5' != 5
# => true

# As with `==`, we can easily compare two values of the same type for inequality
#   and get reasonable results.
# However, if the two values have different types, the return value is `true`.


<   # 3. The "less than" symbol.
# Anything to the left of the symbol has a lower than anything to the right of the symbol.


>   # 4. The "greater than" symbol.
# Anything to the left of the symbol has a higher value than anything to
#   the right of the symbol.

<   >   # use case examples:
# irb :001 >
4 < 5
# => true

# irb :002 >
4 > 5
# => false

# irb :003 >
"4" < "5"
# => true

# irb :004 >
" 4" > "5"
# => false

# irb :005 >
"42" < "402"
# => false
# 1st char in string 4 < 4 equal so go Next,
# 2nd char in string 2 < 0 false
# result is false

# irb :006 >
"42" > "402"
# => true
# 1st char in string 4 > 4 equal so go Next,
# 2nd char in string 2 > 0 true
# no more characters to compare  since shortest string has run out of characters
# result will be true

# irb :007a >
"42" < "420"
# => true
# 1st char in string 4 < 4 equal so go next
# 2nd char in string 2 < 2 equal so go next BUT WAIT...
# no more char and since both strings were equal up to the length of the 
#   shortest string, then the shorter string < longer string
# so this will make this statement true

# irb :007b >
"42" > "420"
# => false
# 1st char in string 4 > 4 equal so go Next,
# 2nd char in string 2 > 2 equal so go Next BUT WAIT...
# no more char and since both strings were equal up to the length of the
#   shortest string, then the shorter string < longer string
# so the result will be false

# irb :008 >
"42" < 420
# => ArgumentError (comparison of String with 420 failed)

# irb :009 >
42 > "420"
# => ArgumentError (comparison of Integer with String failed)

# The examples numbered `005`, `006`, `007`, are especially tricky!
# Make sure you understand them.
# When comparing strings, the comparison is character-by-character.
# Ruby moves from left-to-right in the strings looking for the first character
#   that is different from its counterpart in the other string.
# Once it finds a character that differes, it compares that character with its
#   counterpart, and makes a decision based on that.
# If both strings are equal up to the length of the shorter string
#   as in the final example, then the shorter string is considered less
#   than the longer string.

# The final two examples show that you can't use `<` and `>` with values 
#   of different types.
# (The same holds true for the `<=` and `>=` operators shown below).

# Some other examplse I came up with
# irb : 010 >
"400" > "5"
# => false
# 1st char in string 4 > 5  false

# irb : 011 >
"400" > "4"
# => true
# 1st char in string 4 > 4 equal so go Next BUT WAIT...
# since both strings were equal up to the length of the shortest string,
#   then the shorter string < longer string
# which will result in this statement being true

# irb : 012 >
"400" > "41"
# => false
# 1st char in string 4 > 4 equal so go Next
# 2nd char in string 0 > 1 false
# result is false

# irb : 013 >
"400" > "40"
# => true
# 1st char in string 4 > 4 equal so go Next
# 2nd char in string 0 > 0 equal so go Next BUT WAIT...
# since both strings were equal up to the string of shortest length...
#   then the shorter string < longer string
# which will result in this statement being true


<=  # 5. The "less than or equal to" symbol. 
# Anything to the left of the symbol is less than or equal to anything on the right.


>=  # 6. The "greater than or equal to" symbol.
# Anything to the left of the symbol is greater than or equal to anything on the right.

# irb :001 >
4 <= 5
# => true

# irb :002 >
5 >= 5
# => true

# irb :003 >
4 >= 5
# => false

# irb :004 >
4 >= 3
# => true

# irb :005 >
4 >= 4
# => true

# Of course the `<=` and `>=` operators work equally well with strings.

# more examples:
# irb :006 >
"4" <= "40"
# => true

# irb :007 >
"42" <= "5"
# => true
# 1st char in string 4 <= 5 true

# irb :008 >
"40" <= "400"
# => true
# 1st char in string 4 <= 4 equal so go Next,
# 2nd char in string 0 <= 0 equal so go Next but WAIT
# since both strings are equal up to the string of shorter length,
# then shorter string < longer string
# result of this is true

# irb :009 >
"41" <= "400"
# => false
# 1st char in string 4 <= 4 equal so go Next,
# 2nd char in string 1 <= 0 false
# result is false


#   Combining Expressions
# Ok, you're starting to get a decent grasp of conditional flow.
# It is also possible to combine multiple conditional expressions together
#   to create a more specific scenario.

&&  # 1. the "and" operator.
# Expressions to the left and right of this operator have to be both true
#   for the entire expression to be evaluated to true.
# That being said, if any expression to the left of right is false...
#   then the entire expression is to be evaluated to false

# example:
# irb: 001 >
(4 == 4) && (5 == 5)
# => true

# irb :002 >
(4 == 5) && (5 == 5)
# => false

# irb :003 >
(4 == 5) && (5 == 6)
# => false


||  # 2. the "or" operator.
# Either the expression to the left has to be true, or the expression
#   to the right has to be true for the entire expression to be
#   evaluated to true.
true || true
# => true
false || false
# => false
true || false
# => true
false || true
# => true
false || false
# => false

# more examples:
# irb :001 >
(4 ==4) || (5 == 5)
#  true || true
# => true

# irb :002 >
(4 == 5) || (5 == 5)
#  false || true
# => true

# irb :003 >
(4 == 5) || (5 == 6)
#  false || false
# => false


!   # 3. the "not" operator.
# When you add this in front of a boolean expression it will change
#   that boolean value to its opposite.
# Note: the term Boolean means a result that 
# can only have one of two possible values: true or false.

# example:
# irb :001 >
!(4 == 4)
# !(true)
# boolean expression changes from true to false
# => false

# What happens here is Ruby first evaluates what is in the parentheses and then
# the `!` operator changes it.
# We know that `4 == 4` would return true.
# If we say `!true` then that returns false.
# You can think of !true as saying "not true".

&&  ||  # these operators don't always return `true` or `false`...
#   but they do when they operate on boolean values.
# A little later in this chapter, we'll see what happens when we use
   &&  ||  # with non-boolean values.

# Note: When you are combining expressions as we are above, it is helpful to use
#   parentheses to group expressions together.
# This is helpful for readability and also helps the computer more accurately
#   understand your intention.
# The computer will evaluate parentheses in normal algebraic order.

# Ruby follows an ##order of precedence## when deciding how to evaluate
#   multiple expressions.
# The following is a list of operations from highest order of precedence
#   (top) to lowest(bottom).

# Most important
 <=   <   >=  # 1. Comparison
 
 ==   !=      # 2. Equality
 
 &&           # 3. Logical AND
 
 ||           # 4. Logical OR
# Least important

# Knowing this we can look at the following expression and see how it is evaluated:
if x && y || z
  # do something
end

# Order of operations:
# First the `x && y` statement will be executed.
# If that statement is true, then the program will execute the `# do something`
#   code on the next line.
# If the `x && y` statement is false, then the `z` will be evauated.
# If the `z` is true, the code on the next line will be evaluated.
# If the `z` is false, then the code will exit the `if` statement.


#   Ternary Operator
# Ruby has a nice option for short and concise conditional if statements.
# The ##ternary operator## is a common Ruby idiom
#   that makes a quick `if/else` statement easy and keeps it all on one line.

# The ternary operator uses a combination of the `?` and `:`

# Ternary operator example
# irb :001 >
true ? "this is true" : "this is not true"
# => "this is true"

# irb :001 >
false ? "this is true" : "this is not true"
# => "this is not true"

# How does this work?
# You may have inferred that first the computer evaluates what is to the left of the `?`
# If the expression to the left of `?` evaluates as true,
#   the code directly to the right of the `?` gets executed.
# If the code on the left of the `?` evaluates as false,
#   then the code directly to the right of the `:` gets executed.

# Ternary operators definitely come in handy as your start to get more familiar
#   with `if` statements.
# If you feel like you are unsure of how this works, play around with it in `irb`
#   and test some other cases out.
# Nothing can create familiarity more quickly than good `ol repeated
#   exposure and experimentation.

# more examples:
# irb :001 >
true ? "result if true" : "result if not true"
# => "result if true"

# irb :001 >
false ? "result if true" : "result if not true"
# => "result if not true"

#   Why should I use a Ternary Expression?
# Ternary expressions should usually be used to select between 2 values,
#   not to choose between two actions.
#     (An action would be something like printing a value 
#     or setting a variable to a new value).
# The ternary expression's result should almost always be assigned to a variable,
#   passed to a method as an argument, or returned by a method.
# If your not doing one of those things, and `if/else` statement is a better choice.

# For example, all of the following are good examples of using a ternary expression:
foo = hitchhiker ? 42 : 3.1415   # Assign result of ?: to a variable

puts(hitchhiker ? 42 : 3.1415)  # Pass result as argument

return hitchhiker ? 42 : 3.1415  # Return result

# However the following snippets are ternaries that choose between actions,
#   and should be considered inappropriate uses:
hitchhiker ? (foo = 42) : (bar = 3.1415)  # Setting variables
hitchhiker ? puts(42) : puts(3.1415)      # Printing

# In general, all components of a ternary expression should be 
#   relatively simple expressions. Aim for readability, not brevity.

#   Case Statement
# The final conditional flow structure that we want to talk about is called
#   a case statement.
# A ##case statement## has similar functionality to an `if` statement but with
#   a slightly different interface.

case, when, else, end   # are the reserved words used to make case statements.
# You create one by first defining a case and then evaluating the value of
#   the case and what operation to complete if that case is true.
# As always, talking about this stuff is much harder than simply observing
#   how the code behaves.
# Let's create a file called 'case_statements.rb` to play with some 
#   case statements and see how they work.

# case statement.rb

a = 5

case a
when 5
  puts "a is 5"
when 6
    puts "a is 6"
else
    puts "a is neither 5, nor 6"
end

# This example is roughly equivalent to the following if/elsif/else statement:

# if_statement.rb

a = 5

if a == 5
  puts "a is 5"
elsif a == 6
  puts "a is 6"
else
  puts "a is neither 5, nor 6"
end

# The chief differences are that we only need to specify the variable we want
#   to test once (as the argument to `case`) and we don't specify `a ==` on
#   the individual `when` statements.

# You can also save the result of a case statement into a variable.
# Let's refactor the code above to do just that.
# This way we don't have to write `puts` so many times.

# case_statement.rb <-- refactored

a = 5
answer = case a
  when 5
    "a is 5"
  when 6
    "a is 6"
  else
    "a is neither 5, nor 6"
  end
  
  puts answer
  
  
  # There's a second form of the `case` statement that doesn't take an argument:
  # case_with_no_arg_statement
  a = 5
  
case 
when a == 5
  puts "a is 5"
when a == 6
  puts "a is 6"
else
  puts "a is neither 5, nor 6"
end

# The difference here is that we don't provide an argument on line 598,
#   and we have to fully test each value with `a==`
#   most developers prefer to use `if/elsif/else/end` instead, but there
#   are situations where this form is preferred.
# We won't get into that here.

# As you can see, there are lots of uses for `case` statements and they
#   can be very powerful tools when writing Ruby programs.
# Remember, if you're uncomfortable with these, spend some time modifying them
#   and watching how they respond to the changes you make.
# Test their boundaries to see what they are capable of.
# Curiosity will serve you well in your journey to learning Ruby.
# There's much to discover!


#   True and False
# Notice that after `if` and `elsif` we have to put an expression that evaluates
#   as either true or false.
# In Ruby, you could even write code like this:
a = 5
if a
  puts "how can this be true?"
else
  puts "it is not true"
end
# => "how can this be true?"

# Try the code above and give `a` values of 0,""(empty string)
#   and even the string 'false' to see the result yourself!

a =
if a
  puts "how can this be true?"
else
  puts "it is not true"
end
# => "it is not true"

a = ""
if a
  puts "how can this be true?"
else
  puts "it is not true"
end
# => "how can this be true"

a = 0
if a
  puts "how can this be true?"
else
  puts "it is not true"
end
# => "how can this be true?"

a = nil
if a
  puts "how can this be true?"
else
  puts "it is not true"
end
# => "it is not true"

a = false
if a
  puts "how can this be true?"
else
  puts "it is not true"
end
# => "it is not true"

# In Ruby, every expressions evaluates as true when used in flow control,
#   except for `false` and `nil`.
# Because of this, we could even write code like this:
if x = 5
  puts "how can this be true?"
else
  puts "it is not true"
end

# The above code is not testing whether `x` is equal to "5".
# It's assigning the variable `x` the value of "5",
#   which will always evaluate to `true`.

# Unfortunately, that looks very similar to `x == 5`, which is testing whether
#   `x` is equal to "5".
# Be careful when reading or writing Ruby;
#   it's expressiveness can also be a source of many subtle bugs.


&&  ||  # are the two logical operators that use short-circuit evaluation.
# These operators work with truthy and falsy values too,
#   and they can also return truthy values instead of boolean values.
# When using `&&` and `||`, the return value is always
#   the value of the operand evaluated last:

# irb :001 > 
3 || 'foo'    # last evaluated operand is 3
# => 3

# irb :002 >
'foo' || 3    # last evaluated operand is 'foo'
# => 'foo'

# irb :003 >
nil || 'foo'  # last evaluated operand is 'foo'
# => 'foo'

# irb :004 >
nil && 'foo'  # last evaluated operand is nil
# => nil

# irb :005 >
3 && 'foo'    # last evaluated operand is 'foo'
# => 'foo'

# irb :006 >
'foo' && 3    # last evaluated operand is 3
# => 3

# Suppose you have an expression of some kind that returns a value that
#   is either truthy or falsy, but isn't a boolean value:
# example:
foo = nil
bar = 'qux'
is_ok = foo || bar

# In this code, `is_ok` gets set to a truthy value of `"qux"`
# In most cases, you can use "qux" as though it were actually a boolean `true` value.
# However, using a string value as though it is a boolean isn't the clearest
#   way to write your code.
# It may even look like a mistake to another programmer who is trying to track
#   down a bug.
# In some strange cases, it may even be a mistake.

# You can address this easily enough by using an `if` statement or a ternary expression:
# `if` statement example:
is_ok
if (foo || bar)
  is_ok = true;
else
  is_ok = false;
end

# ternary expression example:
is_ok = (foo || bar) ? true : false


# if statement expression example
is_ok
if (foo || bar)
  is_ok = true;
else
  is_ok = false;
end

# Either of the above two snippets set `is_ok` to an appropriate boolean value.
# However, they do so in a somewhat wordy manner.
# Many JavaScript programmers use a more concise coercion by using what looks
#   like a `!!` operator:
# example:
is_ok = !!(foo || bar)

# In reality, `!!` isn't a separate operator in Ruby. Instead...
#   it's two consecutive `!!` operators.
# The expression `!!a` is equivalent to writing `!(!a)`.
# The inner `!` converts the value of `a` to `false` if it is truthy,
#   or `true` if `a` is falsy.
# The other `!` then flips `true` to `false` or `false` to `true`.
# In the end, we end up with a boolean value instead of a truthiness value.

# irb :001 >
!!3           # 3 is truthy, !3 is false, and !false is true
# => true

# irb :002 >
!!nil         # nil is falsy, !nil is true, !true is false
# => false

#   Summary:
# This chapter covered booleans, comparisons and the ability to control
#   the flow of code execution with conditionals.
# These are some of the fundamental tools that you'll carry with you as
#   a Ruby developer.
# We've got more exercises to drill these skills into your head and fingers!
