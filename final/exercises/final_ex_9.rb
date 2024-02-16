# 9. Suppose you have a hash
h = {a:1, b:2, c:3, d:4}

# 9.1 Get the value of the key `:b`

puts h[:b]
# => 2

# 9.2 Add to this hash the key:value pair `{e:5}`

h[:e] = 5

puts h
# => {:a=>1, :b=>2, :c=>3, :d=>4, :e=>5}

# 9.3 Remove all key:value pairs whose value is less than 3.5

h.select! do |key, value|
  value > 3.5
end

puts h


# book solution for 9.3:

h.delete_if do |k, v|
  v < 3.5
end
