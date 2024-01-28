#   Ch_8_exercises_combined.rb

# Ch_8.1
# Write a program that checks if the sequence of characters "lab" exists
#   in the following strings.
# If it does exist, print out the word.

# Words include:
#   "laboratory"
#   "experiment"
#   "Pans Labryinth"
#   "elaborate"
#   "polar bear"


def has_a_lab?(string)
  if /lab/.match(string)
    puts "#{string}"
  else
    puts "No match here."
  end
end

has_a_lab?("laboratory")
has_a_lab?("experiment")
has_a_lab?("Pans Labryinth")
has_a_lab?("elaborate")
has_a_lab?("polar bear")

# book solution below that also works:
https://docs.ruby-lang.org/en/3.2/Regexp.html#class-Regexp-label-3D~+Operator
=begin
def check_in(word)
  if /lab/ =~ word
    puts word
  else
    puts "No match"
  end
end


check_in("laboratory")
check_in("experiment")
check_in("Pans Labyrinth")
check_in("elaborate")
check_in("polar bear")
=end

# If we wanted a case insensitive match search we can use the i option like so..
#   if /lab/i =~ word



# 8.2
# What will the following program print to the screen?
# What will it return?

def execute(&block)
  block   #block.call would have worked here
end

execute { puts "Hello from inside the execute method!" }

# print to screen: nothing is shown on screen
# reason: because the block is never activated with the `.call` method.

# returned: #<Proc:0x0000000000e69e98@/home/ec2-user/book_intro_to_ruby/ch_8_more_stuff/exercises/ch_8_ex_2.rb:9>
# The method returns a Proc object.



# 8.3
# What is exception handling and what problem does it solve?

# Exception handling is a way to write code to withstand getting caught up
#   in failure or things that the program could get hung up on.
# There are many exceptions to choose from and you can find them in the documentation:
https://docs.ruby-lang.org/en/3.2/Exception.html



# Book answer: Exception handling is a structure used to handle the possibility
#   of an error occurring in a program.
# It is a way of handling the error by changing the flow of control
#   without exiting the program entirely.



# 8.4
# Modify the code in exercise 2 to make the block execute properly.
def execute(&block)
  block.call
end

p execute { puts "Hello from inside the execute method!" }

# output# => Hello from inside the execute method!
# return# => nil



# 8.5
# Why does the following code give us the following error when run:?
# Because we are missing the `&` in the method definition to tell Ruby that
#   the argument is a block.
# Without the &, Ruby is expecting to receive a regular argument...and not a block
#   as an argument.

def execute(block)
  block.call
end

execute { puts "Hello from inside the execute method!" }


# error log:
=begin
block.rb1:in `execute': wrong number of arguments (0 for 1) (ArgumentError)
from test.rb:5:in `<main>'
=end