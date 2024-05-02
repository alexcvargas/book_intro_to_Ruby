# mutating_3.rb
x = 'a'
y = x
z = y.capitalize!

puts "#{x} #{y} #{z}"


=begin
x          "a"
y          "a"

z          A
x          A

# we have 3 variables that are all pointing to the mutated capitalized "A"

=end

# => "A A A"