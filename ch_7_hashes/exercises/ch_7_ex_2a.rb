# 7.2a
# Look at Ruby's `merge` method.
# Notice it has 2 versions.
# What is the difference between `merge` and `merge!`?

# Write a program that uses both and illustrate the differences.
# the following is an example of using the argument `merge` with no block

h = {a: 7, b: 77, c: 777}
h1 = {a: 71, b: 771, c: 7771}
h2 = {A: 72, b: 772, c: 7772}


p h
p h.merge(h1, h2)
p h
# => {:a=>7, :b=>77, :c=>777}
# => {:a=>71, :b=>772, :c=>7772, :A=>72}
# => {:a=>7, :b=>77, :c=>777}
# This version of .merge uses arguments and no block:
# With arguments and no block:

# Returns the new Hash object formed by merging each successive Hash 
#   in other_hashes into self.
# Each new-key entry is added at the end.
# Each duplicate-key entry’s value overwrites the previous value.

# Most important thing to note: This is Non-Destructive
# When we call on h after calling on h.merge...h remains unchanged.
# Note how the key 'a' is being overwritten by the most recent previous value.
# In our example...the key `a` was changed from 7 to 71
# `b` was changed from 77 to 771 to 772
# `c` was changed from 777 to 7771 to 7772
# since `A` was a non-duplicate new-key entry...it is added at the end
