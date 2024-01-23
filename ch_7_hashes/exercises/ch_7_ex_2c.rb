# 7.2c
# Look at Ruby's `merge` method.
# Notice it has 2 versions.
# What is the difference between `merge` and `merge!`?

# Write a program that uses both and illustrate the differences.
# the following is an example of using the argument `merge` and a block


h = {a: 10, b: 20, c: 30}
h1 = {a: 1, b: 1, c: 1}
h2 = {A: 5, b: 5, c: 5}
h3 = h.merge(h1,h2) do |key, old_value, new_value|
  old_value + new_value 
end

p h
p h3
p h

# => {:a=>10, :b=>20, :c=>30}
# => {:a=>11, :b=>26, :c=>36, :A=>5}
# => {:a=>10, :b=>20, :c=>30}

# When we use the argument `merge` and the given block,
#   we are summing up old key values with new key values
#   and making a new hash comprised of these new summed values.

