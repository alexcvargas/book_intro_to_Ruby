=begin
# scope.rb
a = 5

3.times do |n|
  a = 3
end

puts a
=end

# 2nd version of the file from the examples in chapter 2:
# scope.rb

a = 5

3.times do |n|  # method invocation with a block
  a = 3
  b = 5         # b is initialized in the inner scope
end

puts a
puts b          # is b accessible here, in the outer scope?

# => 3
# => Traceback (most recent call last):
# => /home/ec2-user/book_intro_to_ruby/ch_2_variables/intro_ref/book_ref/scope.rb:23:in `<main>': undefined local variable or method `b' for main:Object (NameError)
