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