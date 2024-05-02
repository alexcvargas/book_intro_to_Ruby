# Ruby Programming Essentials Series
# Flow Control & Loops

# Flow control is changing the way code is executed in different ways.

# Comparison Operators
  4          <          6
operand   operator   operand


irb :001 > 2 > 7
# => false

irb :002 > "a" < "b"
# => true

irb :003 > "42" < "402"
# => false

irb :004 > "42" < 420
# => error

irb :005 > 4 >= 5
# => false

irb :006 > 2 == 3
# => false

irb :007 > 2 == 2
# => true

irb :008 > "hello" == "hello"
# => true

irb :009 > "hello" == "Hello"
# => false

irb :010 > 2 != 2
# => false


# Quiz 1 - Comparison Operators
# q1.1
101 < 2
# => false

# q1.2
34 >= 34
# => true

# q1.3
"ant" < "bee"
# => true     it stops comparing elements on the first true evaluation

# q1.4
"ruby" <= "ruby"
# => true

# q1.5
5.0 == 5
# => true

# q1.6
5 == "5"
# => false

# q1.7
5 < "6"
# => error


# When ruby comes to a condition within an if else statement that is met,
#   it does that and moves on.


# Quiz 2 - if statement
# q2.1 
fruit = "pear"
if fruit == "grapes"
  puts "yummy"
else
  puts "I'm sad it's not grapes"
end

# => I'm sad it's not grapes

# q2.2
grade = 55

puts "Well done" if grade > 90

# => nothing

# q2.3
temperature = 25

if temperature > 30
  puts "Too hot"
elsif temperature == 25
  puts "Just right"
elsif temperature <= 25
  puts "Too cold"
end

# => Just right



# Quiz 3 - case statement
# q3.1
vegetable = "Brussel sprout"
case vegetable
when "corn on the cob"
  puts "Let's BBQ!"
when "cucumber"
  puts "Pretty cool for a sandwich"
end
  
# => nothing

# q3.2
weather = "snow"
case weather
  when "snow" then puts "Skis"
  when "snow" then puts "Tennis rackets"
  when "rain" then puts "Welly boots"
end

# => Skis

# q3.3
language = "ruby"
case language
when "ruby"
  puts "Coolest language in the world!"
when "javascript"
  puts "Written in 10 days, don't you know?"
when "html"
  puts "That's not a proper language."


# => error


# Loops
# waiting2.rb

time_until_bus = 3

loop do
  time_until_bus = time_until_bus - 1
  
  if time_until_bus == 0
    puts "Bus arrived - all aboard!"
    break
  end
  
  puts "#{time_until_bus} minute(s) until next bus."
end


# => 2 minute(s) until next bus.
# => 1 minute(s) until next bus.
# => Bus arrived - all aboard!
end



# waiting3.rb

time_until_bus = 3

loop do
  time_until_bus = time_until_bus - 1
  
  if time_until_bus == 1
    puts "The bus is nearly here, stop looking at your phone!!!"
    next
  end
  
  if time_until_bus == 0
    puts "Bus arrived - all aboard!"
    break
  end
  
  puts "#{time_until_bus} minute(s) until next bus."
end


# => 2 minute(s) until next bus.
# => The bus is nearly here, stop looking at your phone!!!
# => Bus arrived - all aboard!



# Quiz 4 - simple loop
# q4.1
sunflower_height = 0

loop do
  sunflower_height = sunflower_height + 5
  
  if sunflower_height > 20
    puts "I'm all grown!"
    break
  else
    puts "I'm growing!"
  end
end

# => I'm growing!
# => I'm growing!
# => I'm growing!
# => I'm all grown!


# q4.2
days = 3

loop do
  break if days == 0
  puts "#{days} until payday"
  days = days - 1
end 

puts "It's payday!!"

# => 3 days until payday
# => 2 days until payday
# => 1 days until payday
# => It's payday!!


# Quiz 5 - Roundup quiz
# q5.1
number = 20

if number < 20
  puts "Too many"
elsif number > 20
  puts "Too few"
else
  puts "Perfect"
end

# => Perfect

# q5.2
request = "Big triangles"

case request
when "Big triangles"
  puts "All grown up"
when "Small triangles"
  puts "Bit fussy"
else
  puts "Anything goes!"
end

# => All grown up

# q5.3
count = 0
loop do
  puts count
  break if count >= 2
  count = count + 1
end

# => 0
# => 1
# => 2

# q5.4
# What is flow control?
# Changes the flow of program execution away from just top-to-bottom.

# q5.5
# What will this return?
7.0 == 7

# => true

# q5.6
# What will this return?
"bus" < "taxi"
