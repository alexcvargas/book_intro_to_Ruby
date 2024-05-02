# Ruby Programming Essential Series
  # Methods & Variable Scope in Ruby
  
# Methods are re-usable chunks of code that are useful when you have functionality
#   that you'd like to repeat over and over again.
# It saves you from copying and pasting the code all over again.
# Makes maintaining this re-usable code easier because it can be in one single location.

                                    # def begins the method definition
def stir_pan                        # stir_pan is the method name
  puts "Pick up wooden spoon"       # method body
  puts "Stir pan with wooden spoon" # additional method body
end                                 # `end` finishes method definition


# Parameters & Arguments are ways we can pass information to said methods.
# Parameters are used in the method definition.
# Arguments are used in the method invocations.


# Quiz 1 - Parameters & Arguments
# q1.1
def speak(words)
  puts words
end

speak("There are around 700 separate programming languages")

# => There are around 700 separate programming languages.


# q1.2
def enigma(first_name, last_name)
  puts "#{first_name} #{last_name} cracked the enigma machine"
end

enigma("Alan", "Turing")

# => Alan Turing cracked the enigma machine


# q1.3
year = 1986

def virus(year)
  puts "The first computer virus was created in #{year}"
end

virus

# => error


# q1.4
def print_out(words="Ada Lovelace was the world's first computer programmer")
  puts words
end

print_out

# => Ada Lovelace was the world's first computer programmer


# q1.5
# Arguments are used in method invocations.

# q1.6
# Parameters are used in method definitions.


#   Method returns
# Explicit return
def number_of_tins(number_of_servings)
  return (number_of_servings / 2)
end


# Implicit return
def number_of_tins(number_of_servings)
  number_of_servings / 2
end


# If a method doesn't use the `return` keyword...the return value will be
#   value of the last expression evaluated by the method.


# Quiz 2 - Method returns
# q2.1 
def sum
  return (1 + 2)
end

# => 3              example of an explicit return


# q2.2
def multiply
  2 * 4
end

# => 8              example of an implicit return


# q2.3
def first(game)
  return game
  puts "The first computer game was #{game}"
end

first("Space War")

# => Space War


# Method definitions and local variable scope
# Variable scope refers to where a variable can be used.
# For Local variables ...this is determined by where it
#   was created or initialized.

# In the following example titled reviews.rb
#   this program raises an error because local variables
#   initialized in global scope cannot be accessed inside
#   method definitions.

# reviews.rb
verdict = "5*"

def review
  puts "This meal was #{verdict}"
end

review

# => error: undefined local variable or method `verdict' for main:Object (NameError)


# We can fix this by adding parameters and arguments (verdict).
#   to read review(verdict)
# new output will be the following:
# reviews.rb
verdict = "5*"

def review(verdict)
  puts "This meal was #{verdict}"
end

review(verdict)
# => This meal was 5*


# If we try and access a variable created inside the scope of the method definition,
#   the program will run but will raise an error.
# Local variables init'd in method definitons cannot be accessed in global scope.


# Quiz 3 - Method definitions and local variable scope.
# q3.1
program = "Creeper"

def first_virus
  puts program
end

first_virus

# => error - can't locate variable created outside method definition


# q3.2
def saved_apollo_moon_landing_mission
  scientist = "Margaret Hamilton"
end

puts scientist

# =>  error


# q3.3
def first_programmable_computer(name)
  puts "#{name} created the first programmable computer"
end

pioneer = "Charles Babbage"
first_programmable_computer(pioneer)

# Charles Babbage created the first programmable computer
# => nil



# Variable scope in relation to method definition
#   We can also pass information into methods using blocks.
#   We can indicate this using curly braces or in between `do` ...  `end`


# example:
3.times { puts "Scrub pan" }

3.times do
  puts "Scrub pan"
  puts "Rinse pan"
end


# cleanup.rb
3.times { puts "Scrub pan" }
# => Scrub pan
# => Scrub pan
# => Scrub pan


# Blocks and local variable scope
# outer scope CANNOT access variables initialized in inner scope
# Inner scope CAN access variables initialized in inner scope


# given the following code:
# cleanup.rb

3.times do 
  instruction = "Scrub pan"
  puts instruction
  puts "Rinse pan"
end

puts instruction
# => undefined local var or method 'instruction'



# Quiz 4
# q4.1
3.times do
  number = 3
end

puts number

# => error

# q4.2
number = 5

3.times do
  number = 3
end

puts number

# => 3


# Quiz 5
# q5.1
# How much information passed into, or used inside, methods?
# => arguments and parameters and blocks

# q5.2
# How is information passed out of methods?
# => return values

# q5.3
# Method definition and local variable scope:
# Method definitions can access local variables init'd outside of the method definition.
# => False

# q5.4
# method definition and local variable scope:
# Local variables init'd inside method definitions can be accessed outside method definitions
# => False

# q5.5
# Blocks and local variable scope:
# Inner scope can access local variables init'd in outer scope
# => True

# q5.6
# Blocks and local variable scope:
# Outer scope can access local variables init'd in inner scope.
# => False