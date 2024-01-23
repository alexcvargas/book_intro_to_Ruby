# 7.2b
# Look at Ruby's `merge` method.
# Notice it has 2 versions.
# What is the difference between `merge` and `merge!`?

# Write a program that uses both and illustrate the differences.
# the following is an example of using the argument `merge!` with no block


h = {a: 7, b: 77, c: 777}
h1 = {a: 71, b: 771, c: 7771}
h2 = {A: 72, b: 772, c: 7772}


p h
p h.merge!(h1, h2)
p h

# => {:a=>7, :b=>77, :c=>777}
# => {:a=>71, :b=>772, :c=>7772, :A=>72}
# => {:a=>71, :b=>772, :c=>7772, :A=>72}

# Note: this method `merge!` is destructive.
# Basically same thing happened in 7.2a but this time,
#   the changes were permanent and the hash h is now forever changed.
