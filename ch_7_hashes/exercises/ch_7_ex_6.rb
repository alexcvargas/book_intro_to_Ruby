#   7.6
# Given the following code...
x = "hi there"
my_hash = {x: "some value"}
my_hash2 = {x => "some value"}

p my_hash     # => {:x=>"some value"}
p my_hash2    # => {"hi there"=>"some value"}

# my_hash was created using the symbol `x` as the key
# my_hash has the key-value pair as the following:
# key = x
# value = "some value"

# my_hash2 was created using the variable `x` as the key
# my_hash2 has the key-value pair as the following:
# key = "hi there" (referencing the value of the variable x...the string "hi there")
# value = "some value"