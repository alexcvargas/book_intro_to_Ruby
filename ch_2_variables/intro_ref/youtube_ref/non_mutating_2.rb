# non_mutating_2.rb
x = 3
y = 3 * 5
z = y / 5

puts x.object_id == y.object_id

=begin
x              3
y              15
z              3
=end

# => false
# because 3 does not equal 15