# Chapter 3 - Methods

#   What are Methods and Why do we need them?
# You'll often have a piece of code that needs to be executed many times in a program.
# Instead of writing that code over and over, most programming languages
#   have a feature called a procedure, which allows you to extract the
#   common code in one place.
# In Ruby, we call it a method.
def   # before we can use a Method, we must first define it w/ the reserved word `def`.
# After the `def` we give our method a name.
# At the end of our method definition, we use the reserved word `end` to denote
#   its completion.
# example (of the method named `say`)
def say
  # method body goes here
end

# There's a comment in the method body to show you where the logic for the 
#   method definition will go.
# Suppose we had the following code in a file named `say.rb`
# Create this file and type these examples along.

#say.rb
puts "hello"
puts "hi"
puts "how are you"
puts "I'm fine"
# Notice how we've duplicated the `puts` many times.
# We'd like to have one place where we can `puts` and one place the info
# we want to `puts`.
# example (creating a method definition to do just that)

#say.rb (revised)
def say(words)
  puts words
end

say("hello")
say("hi")
say("how are you")
say("I'm fine")
# At first glance this may seem silly, since we didn't save any lines of code,
#   and in fact added more code.
# But what we've done is extracted the logic of printing out text,
#   so that our program can have more flexibility.

# We call(or invoke) the method by typing its name and passing in arguments.
# You'll notice that there's a `(words)` after `say` in the method definition.
# This is what's called a **parameter**.
# Parameters are used when you have data outside of a method definition's scope,
#   but you need access to it within the method definition.
# If the method definition does not need access to any outside data,
#   you do not need to define any parameters.

# You will also see the term **method invocation** to refer to calling a method.

# You can name parameters whatever you'd like, but like we said earlier,
#   it's always the goal of a good programmer to give things meaningful and explicit names.
# We name the parameter `words` because the `say` method expects some words
#   to be passed in so it knows what to say.
# **Arguments** are pieces of info that are sent to a method invocation
#   to be modified or used to return a specific result.
# We "pass" arguments to a method when we call it.

# Here we are using an argument to pass the word or strong of words 
#   that we want to use in the `say` method definition.
# The arguments we use are the `"hello"` part of `say("hello")` after our 
#   method has been defined.
# When we pass those words into the method definition, they're assigned to the
#   local variable `words` and we can use them however we please from within the method definition.
# Note: the `words` local variable is scoped at the method definition level...
#   that is to say that you cannot reference this local variable
#   outside of the `say` method definition.

# When we call `say("hello")` we pass in the string "hello" as the argument
#   in place for the `words` parameter.
# Then the code within the method definition is executed with the `words`
#   local variable evaluated to "hello".

# One of the benefits that methods give us is the ability to make changes
#   in one place that affect many places in our program.
# Suppose we wanted to add a `.` at the end of every string we send to the `say` method.
# We only have to make that change in one place.

# Run this code using the `ruby say.rb` command from your terminal to see the result.
# We've now added a `.` on each line and we only had to add it once in our program.
# Now you're starting to see the power of methods.


#   Default Parameters
# When your defining methods you may want to structure your method definition
#   so that it works, whether given arguments or not.

# Let's restructure our `say` method definition again so that we can assign
#   a default parameter in case the calling code doesn't send any arguments.

# say.rb
def say(words='hello')
  puts words + '.'
end

say()
say("hi")
say("how are you")
say("I'm fine")
# You'll notice that `say()` prints `hello` to the console.
# We have provided a default parameter that is used whenever our method
#   is called without any arguments, nice!


#   Optional Parentheses
# Many Rubyists will leave off parentheses when calling methods as a style choice.
# For example, `say()` could be rewritten as just `say`
# With arguments, instead of `say("hi")` it could just be say "hi".
# This leads to more fluid reading of code, but sometimes it can be confusing.
# Keep in mind when you're reading Ruby; it can get tricky deciphering
#   between local variables and method names!


#   Method Definition and Local Variable Scope
# Before moving on to the next topic on methods, let's take a moment to discuss
#   the concept of local variable scope within a method definition.
# A method definition creates its own scope outside the regular flow of execution.
# This is why local variables within a method definition
#   cannot be referenced from outside the method definition.
# It's also the reason why local variables within a method definition cannot
#   access data outside of the method definition (unless the data is passed
#   in as an argument).

# Let's practice this concept...
# example:
a = 5

def some_method
  a = 3
end

puts a
# Make sure you don't mix up **method invocation with a block**
#   and **method definition** when you're working with local variable scope issues.
# They may look similar at first , but they are not the same.
# They have different behaviors when it comes to local variable scope.

# Method invocation with a block
# example:
[1, 2, 3].each do |num|
  puts num
end

# Method definition
# example
def print_num(num)
  puts num
end



#   obj.method or method(obj)
# There are are two ways to call methods that we will discuss in this book.
some_methods(obj)   # This format is used when you send arguments to a method call;
#   Here you will see that `obj` is the 
#   argument being passed in to the `some_method` method.
# Sometimes, you will see methods called with an explicit caller, like this:
a_caller.some_method(obj)   
# For now it's best to think of the previous code as
some_method   # modifying `a_caller`.
# You'll have to memorize which way is required to call a method for now.


#   Mutating Arguments
# Sometimes, when calling a method, one or more arguments can be altered permanently;
#   that is to say we are **mutating arguments**.

# You will sometimes hear us refer to this mutation of an argument as **mutating the caller**
# This is technically incorrect since mutating the caller refers
#   to a similar but distinct concept.
# We're gradually correcting these misuses of the term, but you're probably
#   going to see us misuse this term from time to time, esp in older material.

# Before diving further into manipulating arguments, recall that we previously
#   stated that method parameters are scoped at the method def level,
#   and are not avail outside of the method definition.
# example:
def some_method(number)
  number = 7  # this is implicitly returned by the method
end

a = 5
some_method(a)
puts a
# In the above code, we passed in `a` to the `some_method` method.
# In `some_method`, the value of `a` is assigned to the local variable `number`,
#   which is scoped at the method definition level.
# `number` is reassigned to the value "7"
# Did this affect the value of `a`?
# The answer is No...because `number` is scoped at the method definition level
#   and the value of `a` is unchanged.
# Therefore we proved that method definitions cannot modify arguments
#   passed in to them permanently.

# One thing to keep in mind is that we **can** mutate objects.
# This is not the same thing as changing the variable, though it
#   can be hard to see the difference.

# For instance, let's say we have a local variable `a` that stores an array.
# (We'll cover arrays in more depth later. For now, 
#   just think of arrays as ordered lists.)
# Type the following code into a file named `mutate.rb` and run it to see the result.

# We use `p` instead of `puts` here.
# These two are very similar with only small diff's to the way Ruby prints the output.
# You can try both to see why we chose to use `p`.

#example
#mutate.rb
a = [1, 2, 3]

# Example of a method definition that mutates its argument permanently
def mutate(array)
  array.pop
end

p "Before mutate method: #{a}"
mutate(a)
p "After mutate method: #{a}"
# => "Before mutate method: [1, 2, 3]"
# => "After mutate method: [1, 2]"

# Notice the difference between each print out?
# We have permanently modified the array the local variable `a` references 
#   by passing it to the `mutate` method,
#   even though `a` is outside the method definition's scope.
# This is because the `pop` method mutates its calling object(the array specif'd by `array`)
# `a` is still pointing to the same array, but, in this case,
#   the number of elements in the array has changed.

# /*Documentation: 
#   pop → object or nil
#   pop(n) → new_array
# Removes and returns trailing elements.
# When no argument is given and self is not empty, removes and returns the last element:
# example:
a = [:foo, 'bar', 2]
a.pop # => 2
a # => [:foo, "bar"]

# Returns nil if the array is empty.
# When a non-negative Integer argument n is given and is in range,
# removes and returns the last n elements in a new Array:
# example:
a = [:foo, 'bar', 2]
a.pop(2) # => ["bar", 2]

# If n is positive and out of range, removes and returns all elements:
# example:
a = [:foo, 'bar', 2]
a.pop(50) # => [:foo, "bar", 2]
# Documentation*/

p "Before no_mutate method: #{a}"
no_mutate(a)
p "After no_mutate method: #{a}"
# You'll notice that we have the same output before and after the method invocation,
#   so we know that `a` was not modified in any way.
# This is because the `last` method does not mutate the calling object `array`
#   on line 243, so the array passed to `no_mutate` is not mutated.

# /*Documentation: 
#   last → object or nil
#   last(n) → new_array
# Returns elements from self; self is not modified.
# When no argument is given, returns the last element:
# example:
a = [:foo, 'bar', 2]
a.last # => 2
a # => [:foo, "bar", 2]
# Documentation*/

# How does one know which methods mutate arguments and which do not??
# Unfortunately, you have to memorize it by looking at the documentation
#   or through repetition/trial and error.
# Ruby is both a pass-by-value and a pass-by-reference language in ways.


#   puts vs return: The Sequel
# Now that you know what a method is and how it works, we can discuss the difference
#   between `puts` and `return`. You haven't really been properly
#   introduced to `return` but that's because in Ruby, every method
#   returns the evaluated result of the last line that is executed.

# Let's use our `mutate.rb` file to demonstrate this.
a = [1, 2, 3]

def mutate(array)
  array.pop
end

p "Before mutate method: #{a}"
p mutate(a)
p "After mutate method: #{a}"

# We're using the `p` method to print out the value of whatever the `mutate`
#   method returns.
# Output looks like this:
# => "Before mutate method: [1, 2, 3]"
# => 3
# => "After mutate method: [1, 2]"

# Here's what is happening:
# 1. We print out `a` as we initially defined it.
# 2. We print out the value of the returned mutate method.
# 3. We print out the value of `a` after the mutate method.
# The `pop` method is removing the last element in the array and returning it.
# We see this in 2. where we print out the value 3.

# Let's examine `return` by itself so we can fully understand it.
# We will create a file called return.rb to demonstrate.


# One of the major points that you will want to take away from this section
#   is that the `return` reserved word is not required in order to return something
#   from a method. This is a feature of the Ruby language.
# Consider the following method definition:
# example:
# return.rb
def add_three(number)
  number + 3
end

returned_value = add_three(4)
puts returned_value
# => 7
# Here we assigned the `returned_value` to the value returned by the `add_three` method.
# Then we print `returned_value` to the output to see what it has inside it.
# Your output should print `7` because that's what the method call returned.

# Ruby methods ALWAYS return the evaluated result of the last line
#   of the expression unless an explicit return comes before it.

# If you wanted to explicitly return a value you can use the `return` keyword.
# return.rb
def add_three(number)
  return number + 3
end

returned_value = add_three(4)
puts returned_value
# Your output should still be the same right? and it is! Let's see if we run the below...

# return.rb
def add_three(number)
  return number + 3
  number + 4
end

returned_value = add_three(4)
puts returned_value
# The program above should still output `7`, the number you told it to return.

# When you place a `return` in the middle of the `add_three` method definition,
#   it just returns the evaluated result of `number + 3`, which is 7, 
#   without executing the next line.

# One of the major points that you will want to take away is that the `return` 
#   reserved word is not required in order to return something from a method.
# This is a feature of the Ruby language.
# Consider this method definition:
# example:
def just_assignment(number)
  foo = number + 3
end

# The value of `just_assignment(2)` is going to be 5 because the assignement
#   expression evaluates to 5, therefore that's what is returned.

# That about covers methods. You're going to be wiser and more confident with Ruby.
# Keep going! It only gets better from here.


#   Chaining Methods
# Because we know for certain that every method call returns something, we can
#   chain methods together, which gives us the ability to write
#   really expressive and succint code.

# Creating the following method definition:
# example
def add_three(n)
  n + 3
end
# The above method will return - not print out, but *return* - the value
#   passed in incremented by 3.
# We can use it like this:
# example:
add_three(5)  # returns 8

# Since the `add_three` method call returns a value, we can keep calling methods
#   on the returned value.
add_three(5).times { puts 'this should print 8 times'}
# This means we are calling the `times` method on the returned value of
#   `add_three(5)`, which is 8.
# If we run the above in `irb` we will get:
this should print 8 times
this should print 8 times
this should print 8 times
this should print 8 times
this should print 8 times
this should print 8 times
this should print 8 times
this should print 8 times
=> 8

# Note the last line.
# That means the entire expression `add_three(5).times {puts 'this should print 8 times'}
#   returned 8, which implies we can keep chaining method calls if we wanted to!

# In Ruby, it's common to see methods being chained together to form elegant code.
# example:
"hi there".length.to_s  # returns "8" - a string

# This is because the String `length` method returns an integer, and we call `to_s`
#   on integers to convert them into strings.

# Ok, back to our original `add_three` method definition. Only with a small modification:
# example:
def add_three(n)
  puts n + 3
end

# Notice that we're using `puts` to output the incremented value, as opposed
#   to implicitly returning it.
# Will the code work below?
# example
add_three(5).times { puts "will this work?" }
# => NoMethodError: undefined method `times' for nil:NilClass
# Somewhere we are g etting a `nil` and `nil` doesn't know how to respond
#   to a `times` method call.

# Let's try and break it down into pieces to troubleshoot:
# example
def add_three(n)
  puts n + 3
end

p add_three(5)
# => 8
# => nil
# Note: this prints the incremented value of 8, but the return value is `nil`.
# It turns out that `puts` always returns `nil`.
# Since `puts n + 3` is the last expression in the method definition,
#   `add_three` returns `nil`.
# We can now no longer use `add_three` to keep chaining methods since it returns `nil`.

# This is an important aspect of chaining methods together: if anywhere along the chain,
#   there's a `nil` return value or an exception is thrown, the entire chain call
#   will break down.
# If we  want the `add_three` method to print the incremented value as well
#   as return it, we have to make this fix:
# example
def add_three(n)
  new_value = n + 3
  puts new_value
  new_value
end

# We could use `return new_value` as well, but since `new_value` is the last expression
#   in the method definition, it's being implicitly returned.

#   Method Calls as Arguments
# Thus far, we've become familiar with how methods are called.
# Let's take some simple examples to go over this concept.
# We're going to define `add` and `subtract` methods and call them:
# example:
def add(a, b)
  a + b
end

def subtract(a, b)
  a - b
end
# We've defined two methods `add` and `subtract` that take parameters `a` and `b`
# We assume both are integer values. Recall that Ruby implicitly returns the last
#   line of a method; since both method definitions here contain just one line each,
#   we're letting Ruby do it's magic by using implicit return.
# Note: We could have also used explicit return to be more specific.

# Now let's call these methods by passing integer values:
add(20, 45)
=> 65
# returns 65

subtract(80, 10)
=> 70
# returns 70

# What is less obvious is that Ruby actually allows us to pass a method call as
#   an argument to other methods.
# In other words, we're saying we can pass `add(20, 45)` and `subtract(80, 10)`
#   as arguments to another method.

# Remember that these method calls return integer values which is what allows us
#   to perform such an operation. In other words, the returned value is what
#   is  being passed as arguments.
# We'll illustrate by defining a `multiply` method:
def  multiply(num1, num2)
  num1 * num2
end

# Now let's pass `add(20, 45)` and `subtract(80, 10)` as arguments to `multiply`:

multiply(add(20, 45), subtract(80, 10))
=> 4550
# returns 4550

# Let's see a more complicated example:
add(subtract(80, 10), multiply(subtract(20, 6), add(30, 5)))

# Let's break this down...
# we have add(argument1, argument2)
# where argument1 = subtract(80, 10)
# and argument2 = multiply(subtract(20, 6), add(30, 5))
# argument1 => 80 - 10 = 70
# argument2 => multiply(subargument1, subargument2)
#              multiply( (20 - 6)   ,  (30 + 5))
#              multiply(14, 35)
#              => 490
# back to the more complicated example...
# add(argument1, argument2)
# add(70, 490)
# => 560

# One very important thing to be aware of when using nested method calls is the use
#   of parentheses to prevent any kind of confusion.

# We've seen that method calls always return a value and we can pass that method call
#   as an argument to another method call based on the returned value.
# Thus, it's vital to know what our defined methods are returning, since in the
#   final analysis, this is what is actually being passed as arguments to other method calls.


#   The Call Stack
# One important aspect of methods that all programmers need to understand is
#   is the concept of the ##call stack##, or more casually, the ##stack##.

# The call stack helps Ruby keep track of what method is executing as well
#   as where execution should resume when it returns.
# To do that, it works like a stack of books, you can put a new book on the top
#   or remove the topmost book from the stack.
# In much the same way, the call stack puts information about the current
#   method on the top of the stack, then removes that info when the method returns.

# In Ruby, methods aren't the only thing in the call stack.
# Blocks, procs, and lambdas also use the call stack; in fact, they all
#   use the same call stack as Ruby uses for methods.
# For simplicity, we will usually just mention methods when discussing the call stack.
# However, you should always remember that blocks, procs, and lambdas are also part
#   of this process.

# example
def first              # line 1
  puts "first method"  # line 2
end                    # line 3
                       # line 4
def second             # line 5
  first                # line 6
  puts "second method" # line 7
end                    # line 8
                       # line 9
second                 # line 10

# When this program starts running, the call stack initially has one item
#   --called a stack frame-- that represents the global(top-level) portion
#   of the program.
# The initial stack frame is sometimes called the `main` method.
# Ruby uses this frame to keep track of what part of the main program it is 
#   currently working on.

=------------=
| Call Stack |
|      -     |
|      -     |
|      -     |
|    main    |
=------------=

# When a program execution reaches the method invocation on line 10 where 
#   the program reads "second", it will first update the `main` stack frame
#   with the current program location.
# Ruby will use this location later to determine where execution should
#   resume when `second` finishes running.

# After setting the location in the current stack frame, Ruby creates a new
#   stack frame for the `second` method and places it on the top of the call stack:
#   we say that the new frame is ##pushed## onto the stack.
# Our call stack now looks like this:

=---------------=
| Call Stack    |
|      -        |
|      -        |
|   second      |
|main: line 10  |
=---------------=

# Note that the frame for the `second` method is now #stacked# on top of the `main` frame.
#   While the `second` frame is still on the stack, `main` remains stuck beneath it,
#   inaccessible. At the same time, the `main` method becomes dormant and the
#   `second` method becomes active.

# The `second` method calls the `first method on line 6.
# That action causes Ruby to update the `second` frame so that Ruby will know where
#   to resume execution later.
# It then creates a new stack frame for the `first` method and pushes it to the call stack.


=---------------=
| Call Stack    |
|      -        |
|      first    |
|second: line 6 |
|main: line 10  |
=---------------=


# Once the `first` method begins executing, it invokes the `puts` method.
# All Ruby methods, including the built-in ones like `puts`, share the same call stack.
# Therefore, we need to record our current location and then push a new frame to the stack:

=---------------=
| Call Stack    |
|     puts      |
|first: line 2  |
|second: line 6 |
|main: line 10  |
=---------------=

# Chances are, `puts` also has several internal method calls.
# However, we will ignore them and just assume that `puts` does all its work without
#   any additional method calls.
# Instead, it just logs the message `first method` to the console, then immediately returns.

# When `puts` returns, Ruby removes --##pops##--the top frame from the call stack.
# That's the frame for `puts` in this example.
# That leaves the previous stack frame exposed.
# Ruby uses this frame to determine where execution should resume.
# In this case, execution resumes immediately after line 2.


=---------------=
| Call Stack    |
|      -        |
|first: line 2  |
|second: line 6 |
|main: line 10  |
=---------------=

# Eventually the `first` method will return. When that happens, the `first`
#   frame gets popped from the stack.
# That exposes the stack frame for `second`, and that, in turn, tells Ruby
#   that it should resume execution on line 6.

=---------------=
| Call Stack    |
|      -        |
|      -        |
|second: line 6 |
|main: line 10  |
=---------------=

# Next, execution jumps to the `puts` call on line 7.
# Like before, the current location is recorded and a new frame is pushed to the stack:

=---------------=
| Call Stack    |
|      -        |
|     puts      |
|second: line 7 |
|main: line 10  |
=---------------=

# When this `puts` call returns, the stack frame gets popped and execution
#   returns to `second`.

=---------------=
| Call Stack    |
|      -        |
|      -        |
|second: line 7 |
|main: line 10  |
=---------------=

# When `second` finishes executing, the stack frame for `second` gets popped
#   from the call stack, exposing the stack frame for `main`.
# The `main` frame tells Ruby to resume execution on line 10.

=---------------=
| Call Stack    |
|      -        |
|      -        |
|      -        |
|main: line 10  |
=---------------=

# Eventually, the `main` method has no more code to run.
# When this happens, the `main` frame gets popped from the stack, and the program ends.

=---------------=
| Call Stack    |
|      -        |
|      -        |
|      -        |
|      -        |
=---------------=

# The call stack has a limited size that varies based on the Ruby implementation.
# That size is usually sufficient for more than 10,000 stack entries.
# If the stack runs out of room, you will see a `SystemStackError exception.

# Summary video: https://www.youtube.com/watch?v=W8AeMrVtFLY
# The call stack can be thought of sort of like a to-do list of function invocations.
# Last In, First Out structure.
# Whenever you invoke a function, the details of the invocation are saved to
#   the top of the stack(pushed to the top).
# Whenever a function returns, the information about the invocation is
#   taken off the top of the stack(popped off the top).

#   Stack Definition:
# An ordered set of stack frames
# Most recently invoked function is on the top of the stack
# The bottom of the stack is the first function invoked
# The stack is processed from top to bottom