#   7.7
# If you see this error, what do you suspect is the most likely problem?
# NoMethodError: undefined method `keys' for Array

# A. We're missing keys in an array variable.

# B. There is no method called keys for Array objects.

# C. keys is an Array object, but it hasn't been defined yet.

# D. There's an array of strings, and we're trying to get the 
#   string keys out of the array, but it doesn't exist.

# The answer is B
# The keys method is a hash method...
# invoking the keys method on a hash will return an array for all the keys
#   in that hash
#   https://docs.ruby-lang.org/en/3.2/Array.html
# on the left hand side you will see that therer is no keys method under available methods

