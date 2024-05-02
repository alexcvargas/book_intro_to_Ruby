# non_mutating_3.rb
x = 'hello'
y = 'hello'

puts x.object_id == y.object_id

z = x 

#puts x.object_id == z.object_id


# The to_sym method returns the symbol version of the calling string
x = x.to_sym
y = y.to_sym

#puts x.object_id == y.object_id



# => true
# => true
# => false