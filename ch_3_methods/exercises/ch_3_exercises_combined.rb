# 1. Write a program that prints a greeting message.
# This program should contain a method called `greeting` that takes a `name`
#   as its parameter and returns a string.

def greeting(name)
  "Hello, " + name + ". Welcome!"
end

puts greeting("John Wick")
# Remember that `puts` returns nil and this is why we could not add `puts` on line 6

# 2. What do the following expressions evaluate to?
# That is, what does each expression return?

# 2.1
x = 2
# nothing on screen
# returns => 2

# 2.2
puts x = 2
# => 2
# returns => nil

# 2.3
p name = "Joe"
# => "Joe"
# returns => "Joe"

# 2.4
four = "four"
# nothing on screen
# returns => "four"
# simple variable assignment we are assigning the variable `four` to the string "four"
# 2.5
print something = "nothing"
# => "nothing" => nil
# the return of nil is on the same line because of the use of `print`


# 3. Write a program that includes a method called `multiply` that takes two
#   arguments and returns the product of two numbers.

def multiply(number1, number2)
  number1 * number2
end

puts multiply(2, 4)
# => 8





# 4. What will the following code print to the screen?

def scream(words)
  words = words + "!!!!"
  return
  puts words
end

scream("Yippeee")

# nothing print to the screen
# =>
# return value of the method is nil

# When you explicitly return from a method, Ruby exits that method immediately...
#   and the subsequent code within that method will not be executed.



# 5.1 Edit the method definition in exercise #4 so that it does print words on the screen.

# example 4 code:
def scream(words)
  words = words + "!!!!"
#  return
  puts words
end

scream("Yippeee")

# by removing this explicit return ...the program does print to screen this time

# 5.2 What does it return now?
# => Yippeee!!!!
# return is nil because puts being the last argument in this method will return nil.



# 6. What does the following error message tell you?
=begin
ArgumentError: wrong number of arguments (1 for 2)
 from (irb):1:in `calculate_product'
 from (irb):4
 from /Users/username/.rvm/rubies/ruby-2.5.3/bin/irb:12:in `<main>'
=end
# you are calling a method called `calculate_product` that requires two arguments
#   but you are only providing one.





=begin
# error as follows:
Traceback (most recent call last):
        1: from /home/ec2-user/book_intro_to_ruby/ch_3_methods/exercises/ch_3_ex_6.rb:17:in `<main>'
/home/ec2-user/book_intro_to_ruby/ch_3_methods/exercises/ch_3_ex_6.rb:13:in 
`calculate_product': wrong number of arguments (given 1, expected 2) (ArgumentError)
=end

