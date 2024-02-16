# 7. What's the major difference between an Array and a Hash?


# Hashes have key-value pairs and the order isn't as important
#   because the hash contains a key value pair for referencing by key.

# Arrays are a sequence of elements and each element can be accessed by its index
#   beginning from 0.

hash = {dog: 'fido', cat: 'fluffy' }

array = ['fido', 'fluffy']

puts hash[:dog]
puts array[0]