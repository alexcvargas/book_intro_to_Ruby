# reassign_3.rb
x = y
y = 'a'
z = 'b'
y = z

puts x

=begin
x        y
y        'a'
z        'b'
y        'b'
=end

# => error:  undefined local variable or method `y' for main:Object (NameError)
# the variable `y` hasn't been created in the program and it throws an error
# the variable `y` doesn't exist until you have defined it

