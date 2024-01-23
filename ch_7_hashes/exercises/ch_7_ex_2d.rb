# 7.2d
# Look at Ruby's `merge` method.
# Notice it has 2 versions.
# What is the difference between `merge` and `merge!`?

# Write a program that uses both and illustrate the differences.
# the following is an example of using the argument `merge!` and a block


h = {a: 10, b: 20, c: 30}
h1 = {a: 1, b: 1, c: 1}
h2 = {A: 5, b: 5, c: 5}

p h

h3 = h.merge!(h1,h2) do |key, old_value, new_value|
  old_value + new_value 
end


p h3

p h

# => {:a=>10, :b=>20, :c=>30}
# => {:a=>11, :b=>26, :c=>36, :A=>5}
# => {:a=>11, :b=>26, :c=>36, :A=>5}


# Note this is destructive
# h.merge! forever changes h ....
# For this reason, I had to change the place where `h` was called,
#   because I wanted to emphasize that `h` used to have its own key-value pairs
#   but merge! changes all of that and you can see by calling on `h` at the end
#   that `h.merge!` has changed `h` permanently.

