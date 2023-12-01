# 6.6 You run the following code...
names = ['bob', 'joe', 'susan', 'margaret']
names['margaret'] =  'jody'

# and get the following error message:
=begin


TypeError: no implicit conversion of String into Integer
  from (irb):2:in `[]='
  from (irb):2
  from /Users/username/.rvm/rubies/ruby-2.5.3/bin/irb:12:in `<main>'
  
  
=end

# What is the problem and how can it be fixed?
# We get this error because because we are passing
#   ['margaret'] (an element of the 'names' array)
#   instead of an index of that element in the given array.
# When we use array element reference or element assignment, 
#   we need to place the index of the element in square brackets 
#   and not the element itself.


# What we can do to achieve the intended result is to type the following:
names[3] = 'jody'

# this will change the position 3 element in the array to be changed to the string 'jody'