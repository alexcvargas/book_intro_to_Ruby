# non_mutating_1.rb
x = 'a'
y = x.upcase
x = y
y = 'b'

puts x

=begin
x           "a"
y           "A"
x           "A"
y           "b"
=end
# => A