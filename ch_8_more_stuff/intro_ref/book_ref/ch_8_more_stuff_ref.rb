#   More Stuff!
# We're going to turn our attention now to a collection of topics that are
#   important to know, but you don't have to master just yet.
# You'll run into these topics as you read more Ruby code,
#   so we want to give you a heads up and make sure you're prepared
#   for anything that is thrown at you.
# Each of these topics has enough depth to be it's own book,
#   so we're only going to cover the basics and give you a quick intro.

# -If you're reading this book as part of the Launch School curriculum,
#   don't worry too much about these topics for now, use this section more
#   for awareness than understanding.
# We cover most of them in much more depth later in the curriculum.

#   Regex
# ##Regex## stands for ##regular expression##.
# A regular expression is a sequence of characters that form pattern matching rules,
#   and is then applied to a string to look for matches.
# Regular expressions have many uses, some examples:

#   1. Check if the pattern "ss" appears in the string "Mississippi".
#   2. Print out the 3rd word of each sentence form a list of sentences.
#   3. Find and replace all instances of "Mrs" with "Ms" in a sentence.
#   4. Does a string start with "St"?
#   5. Does a string end with "art"?
#   6. Does a string have non-alphanumeric characters in it?
#   7. Are there any whitespace characters in the string?
#   8. Find and replace all non-alphanumeric characters in a string with "-".

# This is just a small sample of what regexes can do.
# Below, we are going to focus soley on the first example because it's
#   the most commonly used.

# Creating regular expressions starts with the forward slash character (/).
# Inside two forward slashes you can place any characters you would like
#   to match with the string.

# We can use the `=~` operator to see if we have a match in our regular expression.
# Let's say we are looking for the letter "b" in a string "powerball".
# Here's how we'd implement this using the `=~` operator.

irb :001 > "powerball" =~ /b/
# => 5

# The order of the string and regex don't usually matter when using `=~`
# Thus, we can also write the above as:

irb :002 > /b/ =~ "powerball"
# => 5

# There are some minor differences between `String#=~` and `RegExp#=~
#   but those differences are unimportant for now.
# We will usually specify the string to the left and the regex to the right
#   of the `=~` but we will sometimes use the reversed order.

# Both expressions above returned a `5`.
# This means that the first match that took place was at the
#   fifth index of the string.
# Remember indices start counting from zero.
# Since `5` is a truthy value (i.e., In Ruby, `5` evaluates as true), 
#   we can use it as a boolean to check for matches.

# boolean_regex.rb

def has_a_b?(string)
  if string =~ /b/
    puts "We have a match!"
  else
    puts "No match here."
  end
end

has_a_b?("basketball")
has_a_b?("football")
has_a_b?("hockey")
has_a_b?("golf")

# => We have a match!
# => We have a match!
# => No match here.
# => No match here.

# On top of the `=~` operator, we can use the `match` method
#   to perform regex comparisons as well.
# This method returns a `MatchData` object that describes the match or `nil`
#   if there is no match.

irb :001 > /b/.match("powerball")
# => #<MatchData "b">

# You can use a `MatchData` object to act as a boolean value in your program.
# Try this out:

# boolean_matchdata.rb

def has_a_b?(string)
  if /b/.match(string)
    puts "We have a match!"
  else
    puts "No match here."
  end
end

has_a_b?("basketball")
has_a_b?("football")
has_a_b?("hockey")
has_a_b?("golf")

# We have the same print out as before!

# Beginning programs rarely need to use regular expressions, but certain problems
#   are a perfect fit for them.
# Solving some programs without regex may require monumental effort.
# However, with a r egex, you may be able to solve the problem with a single
#   line of code.
# If you encounter a string pattern matching problem, remember to look into using regex.

# If you want a deeper dive into regex, our Intro to Regular Expressions book
#   is a great place to start.
https://launchschool.com/books/regex
# It's important to note, though, that if you're currently enrolled
#   in our program it's best not to start the book until after course 130.
# We'll let you know exactly when to start later in the curriculum.
# The summary provided here covers enough regex to get you through
#   the fundamental courses.



#   Ruby Standard Classes
# Often you'll want to perform a specific operation when writing a program in Ruby.
# Your first instinct may be to look up the algorithm or try to implement
#   the operation on your own.
# Depending on the complexity of the operation, we'd like to encourage you otherwise.

# When you wanted to find a way to calculate the square root of a number.
# Ruby's `Math` module has a method called `sqrt` that you can use right away.

irb :001 > Math.sqrt(400)
# => 20.0
# Note: make sure to capitalize Math to get the `Math` module

# Or maybe you need to use PI for something.
# The `PI` below is a "constant" that comes with the `Math` module.
# It's alright that you don't know exactly what constants are yet and you don't
#   know the syntax.
# Just understand the concept for now.
# We are using Ruby's built-in libraries to solve our problems,
#   rather than building our own solutions from scratch every time.

irb :002 > Math::PI
# => 3.141592653589793

# What if you wanted to calculate what specific day July 4th occured in 2008?
# You can use Ruby's built-in `Time` class.

irb :003 > t = Time.new(2008, 7, 4)
# => 2008-07-04 00:00:00 -0400
irb :004 > t.monday?
# => false
irb :005 > t.friday?
# => true

# You can see the power of using Ruby's standard classes.
# There is no use of reinventing the wheel when you have a rich resource
#   to accomplish the tasks and solve the problems that many have solved before.

# Note: why is `Math.sqrt` and not `math.sqrt`?
# This is because `sqrt` is a "class method", and not an "instance method".

# So far, we've been dealing with instance methods, and this is one of the few
#   times where we use a class method.
# For now, just use the syntax we introduced.
# We'll talk about the differences between class and instance methods
#   when we cover Object Oriented Programming in the Core Curriculum.



#   Variables as Pointers
# We'll take a deeper look at variables in this section, and specifically how
#   they act as pointers to an ##address space## in memory.
# That is, the variable doesn't actually contain the value.
# This concept that confuses a lot of new programmers, and it's also
#   one of the most important concepts to understand.
# The easiest way to understand variables as pointers is to look at some examples.

a = "hi there"
b = a
a = "not here"

# What is `b` in the above code?
# Think about it for a second...
# => "hi there"   (value of b)

a = "hi there"
b = a
a << ", Bob"
# What is `b` in the above code?
# => "hi there, Bob"
# We get two different values for b in each of the above two examples.
# Why is this?

# To understand the difference in the above two code snippets, you need
#   to understand that ##variables are pointers to physical space in memory##.
# In other words, variables are essentially labels we create to refer to some
#   physical memory address in your computer.
# In the first example, this is what happened:

#--------------------------------------------------------------------------#
#   a = "hi there"            |              a ----> "hi there"            |
#--------------------------------------------------------------------------#                                                                         |
#                             |              a----->                       |
#   b = a                     |                      "hi there"            |
#                             |              b----->                       |
#--------------------------------------------------------------------------#
#                             |               a----->"not here"            |
#   a = "not here"            |                                            |
#                             |               b----->"hi there"            |
#--------------------------------------------------------------------------#

# From the above diagram, we can see that the code `a = "not here" reassigned
#   the variable `a` to a completely different address in memory;
# it's now pointing to an entirely new string.
# This is what the `=` operator does.
# It's important to understand that different memory space can in fact
#   hold the same value, but they are still different places in memory.
# For example, if our last line of code was `a = "hi there"`,
#   the result would still be the same: `a` and `b` in that case would still
#   point to different addresses in memory; they would just happen to have
#   the same value.

# Now let's see what the second snippet of code did:
#--------------------------------------------------------------------------#
#   a = "hi there"            |              a ----> "hi there"            |
#--------------------------------------------------------------------------#                                                                         |
#                             |              a----->                       |
#   b = a                     |                       "hi there"           |
#                             |              b----->                       |
#--------------------------------------------------------------------------#
#                             |               a----->                      |
#   a << ", Bob"              |                       "hi there, Bob"      |
#                             |               b----->                      |
#--------------------------------------------------------------------------#


# Interesting! The line of code `a << ", Bob" did ##not## result 
#   in reassigning `a` to a new string.
# Rather, it mutated the caller and modified the existing string,
#   whic his also pointed to by the variable `b`.
# This explains why in this code, `b` reflects the changes to `a`
#   -they're both pointing at the same thing!

# This is the major point of this section: some operations mutate the address space,
#   while others simply make the variable point to a different address space.

# This also applies to variables that point to arrays, hashes, or any data structure 
#   that has methods that mutate the caller or one or more of its arguments. 
# If you call a method that mutates the caller or arguments, 
#   it will change the value in that object's address space, 
#   and any other variables that also point to that object will be affected. 
# Therefore, always pay attention to whether your variables are pointing 
#   to the same object (address space) or if they are dealing with 
#   copies that occupy different address spaces.

# Play around with some examples in `irb`.
# Some examples you can try are:
a = [1, 2, 3]
b = a
c = a.uniq
# What are `a`, `b`, and `c`?
# What if the last line was `c = a.uniq!` ?

irb :001 > a = [1, 2, 3]
# => [1, 2, 3]
irb :002 > b = a
# => [1, 2, 3]
irb :003 > c = a.uniq
# => [1, 2, 3]
irb :004 > c = a.uniq!
# => nil  (Returns nil if no elements removed.)


# test_method.rb
def test(b)
  b.map {|letter| "I like the letter: #{letter}"}
end

a = ['a', 'b', 'c']
p test(a)
p a
# => ["I like the letter: a", "I like the letter: b", "I like the letter: c"]
# => ["a", "b", "c"]

# What is `a` after the `test` method returns?
# Did the method modify the value of `a`? (No)
# Suppose we called `map!` instead of `map` from within `test`.
# Would that have any effect on the value of `a`?
# using `map!` would result in the following output:

# => ["I like the letter: a", "I like the letter: b", "I like the letter: c"]
# => ["I like the letter: a", "I like the letter: b", "I like the letter: c"]


# When we use variables to pass arguments to a method, we're essentially
#   assigning the value of the original variable (`a` in this case)
#   to a variable inside the method (`b`).
# This is equivalent to executing `b = a`
# Inside the method, the operations we perform on the `b` variable
#   determine whether the value of `a` will change.
# Some operations, like `map`, will have no affect on `a`
# Others, like `map!` will mutate the value assigned to `a`
# `map!` will instead of inserting a, b, c in the "I like the letter: __"
#   will instead just change each value of the array to the outcome of
#   being run through test(a).

# This is all you need to know for now.
# It's almost guaranteed that you'll run into bugs in the future
#   related to this topic, so the important thing here isn't to memorize the rules,
#   but to understand the concept and be able to jump into `irb`
#   to refresh your memory.


#   Blocks and Procs 
# We talked about blocks earlier in this book but we're going to go a little
#   deeper and show you some of the power of blocks.
# Blocks, like parameters, can be passed into a method just like normal variables.
# This isn't incredibly hard, and it's very powerful.
# Let's look at how we accomplish this.


# passing_block.rb

def take_block(&block)
  block.call
end

take_block do
  puts "Block being called in the method!"
end

# In this example, the ampersand(`&`) in the method definition tells us that
#   the argument is a block. You can name it anything you want.
# The block must always be the last parameter in the method definition.
# When we're ready to use the method, we call it like any other method: `take_block`

# The only difference is that since this method has an `&block` parameter,
#   we can pass in a block of code using `do/end`.
# As you can see, we've been using blocks all along, but this time is the first
#   time we've defined our own method that takes a block as an argument.

# Inside the `take_block` method, we tell Ruby to invoke the `block` arguement
#   by using `block.call`

# Let's make this more complex. Say we wanted to pass an argument to the method also.

# passing_block.rb

def take_block(number, &block)
  block.call(number)
end

number = 42
take_block(number) do |num|
  puts "Block being called in the method! #{num}"
end

# Here we're passing the `number` into the `take_block` method and using it
#   in our `block.call`
# You can see the amount of flexibility and the myriad of possibilities that
#   come into play when using blocks.

##Procs## are blocks that are wrapped in a proc object(we'll cover objects
#   in our object oriented programming book)
https://launchschool.com/books/oo_ruby 
#   and stored in a variable to be passed around.
# This is how you define a proc.


# proc_example.rb

talk = Proc.new do
  puts "I am talking."
end

talk.call


# Procs can also take arguments if specified.


# proc_example_with_arguments.rb

talk = Proc.new do |name|
  puts "I am talking to #{name}"
end

talk.call "Bob"


# Procs can be passed into methods.
# Let's take our previous `passing_block.rb` code and modify the method
#   to take a proc instead. We'll add some functionality too.


# passing_proc.rb

def take_proc(proc)
  [1, 2, 3, 4, 5].each do |number|
    proc.call number
  end
end

proc = Proc.new do |number|
  puts "#{number}. Proc being called in the method!"
end

take_proc(proc)

# Using procs gives us the added flexibility to be able to reuse blocks in more
#   than one place without having to type them out everytime.

# It isn't critical that you understand blocks and procs well enough
#   to write methods with them yet.
# The goal of this section is to give you a general idea of what they are,
#   in case you come across these concepts while reading Ruby code.


#   Exception Handling
##Exception handling## is a specific process that deals with errors in a manageable
#   and predictable way.
# The main thing we want to make you aware of at this point, is how exception
#   handling works and what it looks like.
# The reserved word `rescue` will show up a lot in your Ruby career
#   so it's better to know what it is sooner rather than later.

# When your programs are interacting with the real world, there is a large
#   amount of unpredictability.
# If a user enters bad information or a file-manipulating process gets corrupted,
#   your program needs to know what to do when it runs into
#   these exceptional conditions.

# Ruby has an `Exception` class that makes handling these errors much easier.
# It also has a syntactic structure using the reserved words
#   `begin`, `rescue`, and `end`, to signify exception handling.
# The basic structure looks like this:


# exception_example.rb

begin
  # perform some dangerous operation
rescue
  # do this if operation fails
  # for example, log the error
end

# Often it is necessary to use exception handling when your program is interacting
#   with the outside world, or anything that can behave in an unpredictable manner.
# One common occurrence of this is when a `nil` value makes its way into our program.
# We have to be prepared for this reality.
# Look at the following code and run it to test it out.


# exception_example.rb

names = ['bob', 'joe', 'steve', nil, 'frank']

names.each do |name|
  begin
    puts "#{name}'s name has #{name.length} letters in it."
  rescue
    puts "Something went wrong!"
  end
end

# => bob's name has 3 letters in it.
# => joe's name has 3 letters in it.
# => steve's name has 5 letters in it.
# => Something went wrong!
# => frank's name has 5 letters in it.


# We've used a `begin/rescue/end` block to handle any exceptions that may happen
#   within our block.
# In this example, we have a `nil` value in our array.
# Therefore, we we go to call `.length` on `nil` we get an error.
# When an exception, or error, is raised, the `rescue` block will execute and then
#   the program will continue to run as it would normally.
# If we didn't have the `rescue` block there,
#   our program would stop once it hit the exception and we would lose
#   the rest of our print-out.

# You can also use the `rescue` reserved word in-line like so:


# inline_exception_example.rb

zero = 0
puts "Before each call"
zero.each { |element| puts element } rescue puts "Can't do that!"
puts "After each call"

# Before each call
# Can't do that!
# After each call

# It does so because it isn't possible to call the `each` method on an integer
#   which is the value of the `zero` variable.
# If we remove the `rescue` block, the second `puts` method will not execute
#   because the program will exit when it runs into the error.
# You can see why the word "rescue" is relevant here.
# We are effectively rescuing our program from coming to a grinding halt.
# If we give this same code the proper variable, our `rescue` block never
#   gets executed.

# We can also rescue pre-existing errors when we are writing our code.
# Let's look at doing something like that with a `divide` method.


# divide.rb

def divide(number, divisor)
  begin
    number / divisor
  rescue ZeroDivisionError => e
    e.message
  end
end

puts divide(16, 4)
puts divide(4, 0)
puts divide(14, 7)

# Here we are rescuing the `ZeroDivisionError` and saving it into a variable `e`.
# We then have access to the `message` that the `ZeroDivisionError` object
#   has available.

# If this is confusing at this point, don't worry.
# As you learn more about classes and objects in the coming chapters,
#   you can revisit this section, and it will be much clearer.
# For now, you need to understand that as you write Ruby programs you can
#   anticipate errors that you may run into and handle them properly
#   so that your whole program isn't broken by one error.


#   Exception & Stack Traces
# For the purposes of this section an ##exception## can be viewed as
#   synonymous with an error.
# During the course of program execution, many things can go wrong for a variety
#   of reasons, and when something does go wrong, usually we say "an exception is raised."
# This is a common technical phrase that just means your code encountered some sort
#   of error condition.
# The output you get when an exception is raised is meaningful and designed to help you
#   fix your bugs, but you have to learn how to read it first.
# This skill will end up being one of the most important things to develop over time,
#   because if you're like most programmers, your code will generate a lot of exceptions.

# Let's take a look at a simple example of an error condition:
irb :001 > '1' + 1
TypeError: no implicit conversion of Integer into String

# In the example above, we see a `TypeError` because the two types don't match:
# -one is a `String`, one is a `Integer` - and Ruby doesn't know how to add them together.
# In Ruby terms, an exception is raised, which will halt execution unless
#   there is code in place to rescue the exeption.
# Ruby has a set of built-in exceptions that also come with an attached message.
# In the above example, the exception is a `TypeError` and tells us it can't add
#   the two together without explicitly converting one to a compatible type.
# Some other common built-in error types you may encounter are:

StandardError
TypeError
ArgumentError
NoMethodError
RuntimeError
SystemCallError
ZeroDivisionError
RegexpError
IOError
EOFError
ScriptError
LoadError
NotImplementedError
SecurityError

# This isn't a complete list and you don't need to memorize the above,
#   but it gives a good idea of the kind of situations that might cause
#   an exception.
# The `TypeError` in the above code example shows the first line of the error
#   message provided by the exception, but in real exceptions, you'll often see line
#   after line of text, and it looks like a wall of gibberish.
# What does the rest of the text mean?
# To illustrate, let's look at another example, and we'll walk through
#   diagnosing the cause of the error using the message output from the exception.

# Create a file with the following and name it `greeting.rb` and run it with 
#   `ruby greeting.rb`

# greeting.rb
def greet(person)
  puts "Hello, " + person
end

greet("John")
greet(1)


# The purpose/functionality of this code is simple, but maybe a quick walkthrough
#   might still be helpful.
# First we define a method `greet`, which expects one parameter.
# The idea is that we can write a line of code that says:

greet("Jack")

# And it should output:
# => Hello, Jack

# When we run the script `greeting.rb`, we get one correct greeting, and one error
#   as output -don't panic! We're going to take the error output line by line
#   and understand what it means.

# error log:
$ ruby greeting.rb
Hello, John
greeting.rb:2:in `+': no implicit conversion of Integer into String (TypeError) from greeting.rb:2:in `greet'
from greeting.rb:6:in `<main>'

# The first use of the `greet` method supplies a `String` as the parameter,
#   and so the output is what you'd expect it to be.
# But when we pass `1` as the argument into the `greet` method,
#   we get a `TypeError` exception.
# We already mentioned the first line: it's the error type and the error message.
# But what do the other lines mean?

# Part of this involves understanding how execution works within Ruby, involving
#   the 'stack'.
# When Ruby invokes a method, the method is added to Ruby's 'stack'.
# In the simple example above when we called `greet("John")`, program excecution
#   would look like this:

#       main -> greet -> puts -> exit and return to main

# Not we can make a little more sense of the output from the error,
#   as it provides a detailed trace(known as a stack trace) that shows the flow
#   of execution and where the error occurred.
# Such traces rely on Ruby's call stack, which we discussed in the Methods chapter.

# In the second invocation, `greet(1)`, an error occurs and the program
#   execution flow didn't exit back to `main`, and stayed in the `greet` method.
# The program execution looks like this:

main -> greet -> puts

# Now let's revisit the error:

# greeting.rb:2:in `+': no implicit conversion of Integer into String (TypeError)
#   from greeting.rb:2:in `greet'
#   from greeting.rb:6:in `<main>'

# The stack trace first tells us where the error occurred
#   and why: line 2 of `greeting.rb`, and the the error was b/c the types don't match.
# The error occured due to the call made in the `main` context on line 6,
#   which contains the line that called the method with incorrect
#   arguments, line 2.

# This is a shorter error stack trace than most.
# Let's take a look at a slightly more complex example.
# Note: try not to worry about anything you don't understand in the code just yet,
#   just pay attention to the stack trace and how it allows you to see
#   what called which method, and provides a trail of calls.


# greeting2.rb
def space_out_letters(person)
  return person.split("").join(" ")
end

def greet(person)
  return "H e l l o, " + space_out_letters(person)
end

def decorate_greeting(person)
  puts "" + greet(person) + ""
end

decorate_greeting("John")
decorate_greeting(1)

# Output below:
=begin
H e l l o, J o h n
greeting.rb:2:in `space_out_letters': undefined method `split' for 1:Integer (NoMethodError)
from greeting.rb:6:in `greet' from greeting.rb:10:in `decorate_greeting'
from greeting.rb:14:in `<main>'
=end

# The first example works as expected, the latter causes an exception.
# Ordinarily this should pass the execution flow through as following:

main -> decorate_greeting -> greet -> space_out_letters (passes result back) 
  -> greet -> decorate_greeting -> main

# Looking at the stack trace, you can see this happening:
#   on line 14(the beginning of the chain where the error originated)
#   the `decorate_greeting` method is called.
# It then identifies line 10, where the `greet` method is called by
#   `decorate_greeting`, and then line 6 where
#   `greet` calls `space_out_letters`.
# Because the `split` method expects a string, we get an error,
#   along with a trace of the calls that lead up to that error.
# In a small script this is less useful, but in a larger codebase,
#   being able to trace the execution flow is a very useful way to drill
#   down to the source of the error.


#   Method Definition Order
# Take a look at this code:
# bottom_top.rb
def top
  bottom
end

def bottom
  puts "Reached the bottom"
end

top

# Note that `top` is trying to call the `bottom` method, but `bottom`
#   isn't yet defined on line 2.
# Will this code work?
# Answer: Yes! It can work just fine!
# It printed "Reached the bottom"

# The answer lies in how Ruby executes `def` statements.
# When Ruby encounters a `def` statement, it merely reads the method definition
#   into memory and saves it away to be executed later.
# The body of the method isn't executed until we actually call the method.
# In this code, that happens twice -- when the definition of `top` is 
# encountered and again when the definition of `bottom` is encountered.
# By the time we try to invoke `top` on line 9, Ruby knows precisely what
#   `top` and `bottom` are(methods), and what code the contain.
# Thus, when `top` tries to invoke `bottom`, all Ruby has to do is look up
#   the definition of `bottom`, then invoke it if found.
# Meaning the code runs correctly even though `bottom` was defined after `top` was.

# What do you think will happen if we call `top` before defining the method?

top

def top
  bottom
end

def bottom
  puts "Reached the bottom"
end

# Oops. That doesn't work.
# It fails with an `undefined local variable or method` error.
# The reason it doesn't work is that we're actually trying to invoke `top`
#   on line 1, not loading some code in memory.
# Since Ruby hasn't loaded the `top` and `bottom` methods into memory yet,
#   it has no idea what `top` is, so it gives up.

# These kinds of issues arise when you start writing slightly longer programs
#   with multiple methods.
# A lot of new developers stress over the order in which they define their methods,
#   worried that Ruby won't be able to find them when the program runs.
# In practice, you don't have to worry about it.
# The only rule of thumb is that you should define all your methods before you
#   try and invoke the first one.
# This is why Rubyists almost always put main program code at the bottom of the
#   program after all methods have been declared.


#   Summary
# The information in this chapter is not the critical path to learning Ruby,
#   but you will definitely run into these issues and it's better to have
#   some exposure and familiarity now than to spend hours in confusion later.
# Experiment with these exercises and watch your understanding deepen.