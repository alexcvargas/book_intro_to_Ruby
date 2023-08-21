# Ch_5 Loops & Iterators
# Some operations in computer programming are best served with a loop.

# A ##loop## is a repetitive execution of a piece of paper for a given
#   amount of repetitions or until a certain condition is met.
# We will cover `while` loops, `do/while` loops, and `for` loops.

#   A Simple Loop
# The simplest way to create a loop in Ruby is by using the `loop` method.
loop  # will execute any code within the block (again...that's just
#   `{}` or `do..end`) until you manually intervene with `Ctrl + c` or
#   insert a `break` statement inside the block, which will force the loop
#   to stop and the execution will continue after the loop.

# Let's try an example of a `loop` by creating a file named `loop_example.rb`
# loop_example.rb

loop do
  puts "This will keep printing until you hit Ctrl + c"
end

# Now we can run `ruby loop_example.rb` on the terminal to see what happens.
# You'll notice the same statement keeps printing on the terminal.
# You'll have to interrupt with a `Ctrl + c` to stop it.
=begin
This will keep printing until you hit Ctrl + c
This will keep printing until you hit Ctrl + c
This will keep printing until you hit Ctrl + c
This will keep printing until you hit Ctrl + c
This will keep printing until you hit Ctrl + cInterrupt:
from (pry):2:in `puts'
[2] pry(main)>
=end

#   Controlling Loop Execution
# You'll hardly do something like this in a real program as it's not very useful
#   and will result in an infinite loop.
# Eventually your system will crash.

# Let's look at a more useful example with the `break` keyword by creating 
#   a file named `useful_loop.rb`:
# useful_loop.rb

i = 0
loop do
  i = i + 1
  puts i
  break       # this will cause execution to exit the loop
end

# When you run `useful_loop.rb` in your terminal, the output should be:
$ ruby useful_loop.rb
1

# The `break` keyword allows us to exit a loop at any point, so any code after 
#   a `break` will not be executed.
# Note: that `break` will not exit the program, but only exit the loop
#   and execution will continue on from after the loop.

# Next, let's look at adding conditions within a loop by printing all even
#   numbers from 0 up to 10.
# Let's create a file named `conditional_loop.rb`.
# conditional_loop.rb

i = 0
loop do
  i = i + 2
  puts i
  if i == 10
    break       # this will cause execution to exit the loop
  end
end

# Here's the output when we run the file
$ ruby conditional_loop.rb
2
4
6
8
10

# You can see from the above that `break` was not executed during 
#   the first 4 iterations through the loop, but on the 5th iteration,
#   the `if` statement evaluated as true and so the code within the `if`
#   statement was executed, which is just `break`,
#   and execution exited the loop.

# We'll talk explicitly about using conditionals within a loop later.
# Similar to how we use `break` to exit a loop,
#   we can use the keyword `next` to skip the rest of the current iteration
#   and start executing the next iteration.
# We'll use the same example as before to demonstrate.
# This time we'll skip `4`.

# next_loop.rb
i = 0
loop do
  i = i + 2
  if i == 4
    next        # skip rest of the code in this iteration
  end
  puts i
  if i == 10
    break
  end
end

# step-by-step answer:
i = 0
i = 0 + 2
i = 2

# => 2

i = 2
i = 2 + 2
i = 4 # next....so puts is skipped

i = 4 + 2
i = 6

# => 6

i = 6 + 2
i = 8
# => 8

i = 8 + 2
i = 10
# => 10		#b break

# The output when we run the file is therefore:
$ ruby next_loop.rb
2
6
8
10

# Notice that the above code did not print out 4,
#   because that was skipped over.
# Execution continued to the next iteration of the loop.

break     next    # These are two important loop control concepts
#   that can be used with `loop` or any other loop construct in Ruby,
#   which we'll cover one by one below.
# When combined with conditionals, you can start to build simple programs
#   with interesting behavior.

# As with any other block in Ruby, the block passed to `loop` introduces a new scope.
# From inside the block, you can access variables that were initialized outside
#   of the block.
# However, from outside the block, you can't access any variables that were
#   initialized inside the block.

#   example
# scope error trying to access vars init'd inside block:
loop do
  x = 42
  break
end
puts x      # Raises an error -- x is not in scope outside of the block


#   example
x = 42
loop do
  puts x    # Prints 42 -- x is in scope inside the block
  x = 2     # We can even change the value of x
  break
end
puts x      # 2 -- the value was changed


#   While Loops
# A ##while loop## is given a parameter that evaluates as either true or false.
# Once that expression becomes false, the while loop is not executed again,
#   and the program continues after the while loop.
# Code within the while loop can contain any kind of logic that you would like to perform.
# Let's try an example of a while loop by creating a file named `countdown.rb`.
# We want this program to count down from any number given by the user and
#   print to the screen each number as it counts.

# example:
# countdown.rb

x = gets.chomp.to_i

while x >= 0
  puts x
  x = x - 1
end

puts "Done!"

# Now go to your terminal and run this program with `ruby countdown.rb`.
# You'll notice that the program initially waits for you to put in a number
#   then executes the loop.

# Initially the program evaluates the line `x >= 0`.
# This evaluates as true (unless you entered a negative number) and so the
#   program enters the loop, executing `puts x` and the line after that,
    x = x - 1
# Then the program returns to the top, now with the newly updated value of `x`
#   and evaluates the `x >= 0` again.
# This process repeats until the value of `x` is no longer >= `0`.
# At this point, the program exits the loop and continues with the rest of the code.
# You can see why it's called a loop because it loops
#   over the logic within itself repeatedly.

# We'd also like to take this opportunity to show you a small trick for refactoring
#   this loop:
# countdown.rb

x = gets.chomp.to_i

while x >= 0
  puts x
  x -= 1            # <-- refactored this line.
end

puts "Done!"

# We changed the following line of code:
 x = x - 1
  # to the following:
 x -= 1
# This is common to many programming languages and it's a nice succint way to
#   say the same thing with less typing.
# You can use it with any other operator as well(`+`, `*`, `/`, etc.).

# You should also be aware that because we're using the `x >= 0` expression
#   as a test to see if we should execute the loop, the code within the loop
# *must* modify the variable `x` in some way.
# If it does not, then `x >= 0` will always evaluate to `true` and cause
#   an *infinite loop*.
# If you ever find your program unresponsive, it's possible that it is stuck
#   in an infinite loop.

# One last note: unlike the `loop` method,
#   `while` is not implemented as a method.
# One consequence of this difference is, that unlike `loop`,
#   a `while` loop doesn't have its own scope -- the entire body of the loop
#   is in the same scope as the code that contains the `while` loop:

x = 0
while x < 5
  y = x * x
  x += 1
end

puts y        # => 16

# As you can see, even though `y` is init'd in the body of the `while` loop,
#   it's still in scope after the loop finishes running.


#   Until Loops
# We didn't mention the ##until loop## in the introduction paragraph.
# We do, however, need to mention it briefly so that you know about it.
# The until loop is simply the opposite of the while loop.
# You can substitute it in order to phrase the problem in a different way.
# Let's look briefly at how it works.

# example:
# countdown2.rb

 x = gets.chomp.to_i
 
 until x < 0
 puts x
 x -= 1
 end
 
 puts "Done!"
 
 # There are instances when using `until` that will allow you to write code
 #  that is more readable and logical.
 # Ruby has many features for making your code more expressive.
 # The until loop is one of those features.
 
 # As with `while` loops, `until` is not a method.
 # Therefore, `until` loops don't have their own scope.
 
 
 #  Do/While Loops
 # A ##do/while loop## works in a similar way to a while loop;
 #  one important difference is that the code within the loop gets executed
 #  one time, prior to the conditional check to see if the code should be executed.
 # In a "do/while" loop, the conditional check is placed at the end of the loop
 #  as opposed to the beginning.
 # Unfortunately, Ruby doesn't have a built-in "do/while" -- we have to use
 loop    break   # to emulate the behavior of a "do/while" loop.
 
# Let's write some code that asks if the user wants to perform an action again,
#   but we'll keep prompting the user to enter 'Y' until they do.
# This is a classic use case for a "do/while" since we want to repeatedly perform
#   an action based on some condition, but we want the action
#   to be executed at least once no matter what.

# perform_again.rb

loop do
  puts "Do you want to do that again?"
  answer = gets.chomp
  if answer != 'Y'
    break
  end
end

# Notice that we're using a simple `loop` with a break condition at the end
#   of the loop, therefore ensuring that the loop executes at least once.
# Try copying and pasting the code above into `irb` and playing with it.
# Compare this with a normal "while" loop.

# Side note: there's also another construct in Ruby that supports "do/while" loops,
# example:

# Side note: there's also another construct in Ruby that supports 
#   "do/while" loops, like this:

begin
  puts "Do you want to do that again?"
  answer = gets.chomp
end while answer == 'Y'
# While the above works, it's not recommended by Matz, the creator of Ruby.


#   For Loops
# In Ruby, ##for loops## are used to loop over a collection of elements.
# Unlike a `while` loop, where if we're not careful we can cause an infinite loop...
#   a `for` loop has a definite end since it's looping over a finite # of elements.
# It begins with the `for` reserved word, followed by a variable, then the `in`
#   reserved word, and then a collection of elements.
# We'll show this using an array and a range.
# A range is a special type in Ruby that captures a range of elements.
# For example `1..3` is a range that captures the integers `1`, `2`, and `3`.

# countdown3.rb

x = gets.chomp.to_i

for i in 1..x do
  puts x - i
end

puts "Done!"

# The odd thing about the `for` loop is that the loop returns the collection
#   of elements after it executes, whereas the earlier `while` loop
#   examples return `nil`.
# Let's look at another example using an array instead of a range:

# example:
# countdown4.rb

x = [1, 2, 3, 4, 5]

for i in x.reverse do
  puts i
end

puts "Done!"

# In this case, we had to reverse the array to ensure a proper countdown.
# Otherwise, the loop would have counted up.

# You can see there are a lot of ways to loop through a collection of elements using Ruby.
# Let's talk about some more interesting ways you can use conditions to modify
#   the behavior of your loops.
# Most Rubyists forsake for loops and prefer using iterators instead which
#   we will cover later.

# As with the `while` and `until` loops, `for` is not implemented as a method.
# Therefore, a `for` loop does not have its own scope -- the entire body of the
#   loop is in the same scope as the code that contains the `for` loop.


#   Conditionals Within Loops
# To make loops more effective and precise, we can add conditional flow
#   control within them to alter their behavior.
# Let's use an if statement in a `while` loop to demonstrate:

# example:
# conditional_while_loop.rb

x = 0

while x <= 10
  if x.odd?
    puts x
  end
  x += 1
end

# This loop uses the `odd?` method to decide if the current variable in the loop is odd.
# If it is, it prints to the screen.
# Next, `x` increments by one, and then the loop proceeds to the next iteration.

# The reserved words `next` and `break` can be useful when looping as well.

# If you place the `next` reserved word in a loop, it will jump from that line
#   to the next loop iteration without executing the code beneath it.
# If you place the `break` reserved word in a loop, it will exit the loop asap
#   without executing any more code in the loop.

# example:
# conditional_while_loop_with_next.rb

x = 0

while x <= 10
  if x == 3
    x += 1
    next          # jump from that line-->next loop iteration w/o executing code beneath
  elsif x.odd?
      puts x
  end
    x += 1
end

# => 1
# => 5
# => 7
# => 9

# We use the `next` reserved word here to avoid printing the number `3` in our loop.
# `next` calls the next loop iteration without executing code beneath

# Let's try `break` as well.
# example:
# conditional_while_loop_with_break.rb

x = 0

while x <= 10
  if x == 7
    break           # this will cause execution to exit the loop
  elsif x.odd?
      puts x
  end
    x += 1
end

# When you run this program you can see the entire loop exits when the value of
#   `x` reaches `7` in the loop.
# That is why the print out only goes to `5`.

# Loops are basic constructs in any programming language, but most Rubyists,
#   where possible, prefer iterators over loops.
# We'll talk about iterators next.


#   Iterators
# ##Iterators## are methods that naturally loop over a given set of data and
#   allow you to operate on each element in the collection.

# We said earlier that arrays are ordered lists.
# Let's say that you had an array of names and you wanted to print them to the screen.
# How could you do that?
# You could use the `each` method for arrays, like this:

# practice_each.rb
names = ['Bob', 'Joe', 'Steve', 'Janice', 'Susan', 'Helen']

names.each { |name| puts name }

# We have called the `each` method using the dot operator (`.`) on our array.
# What that method does is loop through each element in our array, in order,
#   starting from `Bob`. Then it begins executing the code within the block.
# The block's starting and ending points are defined by the curly braces `{}`.
# Each time we iterate over the array, we need to assign the value of the
#   element to a variable.
# In this example we have named the variable `name` and placed it in between two pipes `|`
# After that ,we write the logic that we want to use to operate on the variable,
#   which represents the current array element.
# In this case it is simply printing to the screen using `puts`.

# The output is therefore just the printing of each of the names, each on its own line.

# A ##block## is just some lines of code ready to be executed.
# When working with blocks there are two styles you need to be aware of.
#   Style #1)
# By convention- we use the curly braces `{}` when everything can be
#   contained in one line.
#   Style #2)
# Used when performing multi-line operations.
do
  # block stuff goes here
end

# adding some functionality to our previous practice_each.rb program
#   incorporating this `do/end` stuff:

# practice_each.rb

names = ['Bob', 'Joe', 'Steve', 'Janice', 'Susan', 'Helen']
x = 1

names.each do |name|
  puts "#{x}. #{name}"
  x += 1
end

# => 1. Bob
# => 2. Joe
# => 3. Steve
# => 4. Jance
# => 5. Susan
# => 6. Helen

# We've added the counter `x` to add a number before each name,
#   creating a numbered list output.
# The number `x` is incremented every time we go through the iteration.

# Memorizing these small differences in syntax is one of the necessary
#   tasks a Ruby programmer must go through.
# Ruby is a very expressive language.
# Part of what makes that possible is the ability to do things in more than one way.

# There are many other iterator methods in Ruby, and over time, you'll
#   get to use a lot of them.
# For now, know that most Rubyists prefer to use iterators, like the `each` method,
#   to loop over a collection of elements.


#   Recursion
# Recursion is another way to create a loop in Ruby.
# Recursion is the act of calling a method from within itself.
# That probably sounds confusing so let's look at some actual code to get a better idea.

#   A Simple Example
# Let's say you wanted to know what the double of a number was,
#   then the double of that number etc.
# Let's say you wanted to double the number until the pre-doubled number is 10
#   or greater. You could create the following method:

# example:
def doubler(start)
  puts start * 2
end

# and then you can use it like this:
irb(main):001:0> def doubler(start)
irb(main):002:1>   puts start * 2
irb(main):003:1> end
=> :doubler
irb(main):004:0> doubler(2)
4
=> nil
irb(main):005:0> doubler(4)
8
=> nil
irb(main):006:0> doubler(8)
16
=> nil

# You can do this much more simply using recursion.
# Take a look at this version of the method:

# recursion.rb
def doubler(start)
  puts start
  if start < 10
    doubler(start * 2)
  end
end

doubler(2)

# => 4    result of start being passed the value of 2 then mult by 2
# => 8    start is now = 4..resulting in doubler(start * 2)
# => 16   start is now = 8..resulting in doubler(start * 2)

# Another Example
# We are using a method that uses recursion to calculate the nth number 
#   in the fibonacci sequence (basically next num is sum of previous 2 nums- 0112358)

# example:
# fibonacci.rb
def fibonacci(number)
  if number < 2
    number
  else
    fibonacci(number - 1) + fibonacci(number - 2)
  end
end

puts fibonacci(6)

# Each time the code branches off again you are calling the `fibonacci` method
#   from within itself two times.
# If you take all of those ones and zeros and add them together, you'll get the same
#   answer you get when you run the code.
# You can see why computer programs are handy now.
# Think if you had to draw that diagram out every time you wanted to know the
#   fibonacci representation of a number. Yikes!

# The key concept with recursion is that there is some baseline condition that
#   returns a value, which then "unwinds" the recursive calls.
# You can think of the successive recursive calls building up, until
#   some value is returned, and only then can the recursive calls be evaluated.

#   Summary
# Loops and iterators are a great way to perform repeated operations on a data set.
# Often in Ruby, you'll find yourself reaching for an iterator before a loop,
#   but not all the time.
# Recursion, the ability to call a method inside of itself,
#   can also do some powerful operations when solving problems.
