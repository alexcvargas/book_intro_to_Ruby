#   Chapter 5 exercises
# 1. What does the `each` method in the following program return after
#   it's finished executing?

x = [1, 2, 3, 4, 5]
x.each do |a|
  a + 1
end

# putting this into irb..we see that the `each` method returns
# => [1, 2, 3, 4, 5]
# Note: each will always return the original array for the array that it was called on.



# 2. Write a `while` loop that takes input from the user,
#   performs an action, and only stops when the user types "STOP".
# Each loop can get info from the user.

# I fixed my original code to perform an action regardless if the word "STOP"
#   was passed as an initial phrase to the program initially.
# I changed the wording from the book's solution to make the prompt within the
#   code more user friendly.

#puts "type something..."
words = ""

while words != "STOP" do
  puts "is there something else we can help with?(type: 'STOP' to exit)"
  answer = gets.chomp
  puts "are you sure about that?(type: 'STOP' again to exit)"
  words = gets.chomp
end


=begin
# book answer:
x = ""
while x != "STOP" do
  puts "Hi, how are you feeling?"
  ans = gets.chomp
  puts "Want me to ask you again?"
  x = gets.chomp
end
=end



# 3. Write a method that counts down to zero using recursion.

# example from online forums: this one however is using an iterator
# this is a literal second by second countdown timer
#   that prints second by second the countdown from a specific number.
=begin
30.downto(0) do |i|
  puts "00:00:#{'%02d' % i}"
  sleep 1
end
=end

# I came up with this...but still using iterator not recursion
=begin
puts "type in a positive number greater than 0"
x = gets.chomp.to_i

x.downto(0) do |i|
  puts i
end
=end

def countdown(start)
  puts start
  if start > 0
    countdown(start - 1)
  end
end

countdown(5)

#step 1: first run through this program:
#step 2: 5 is assigned to the variable start
#step 3: the value of start is printed to the screen
#step 4: then we check to see if the value of start > 0
#step 5: since 5 > 0 we move on and execute the body of code that follows
#step 6: countdown(5 - 1)  which equates to countdown(4)
#step 7: countdown(4) is a program within this method that runs on its own

# steps 1-7 are repeated with the result being the countdown of values
#   from the starting value all the way down to 0
# Note: this program only works for starting values greater than 0.
# If a negative number is given...then only a negative number will be printed
#   and the program will exit.