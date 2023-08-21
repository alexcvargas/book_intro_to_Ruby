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