# final exercises
https://docs.ruby-lang.org/en/3.2/Array.html
https://docs.ruby-lang.org/en/3.2/Hash.html

# 1. Use the `each` method of Array to iterate over [1, 2, 3, 4, 5, 6, 7, 8, 9, 10],
#   and print out each value.

arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

# one-line version
#arr.each { |number| puts number }

# multi-line version
arr.each do |number|
  puts number
end

# => 1
# => 2
# => 3
# => 4
# => 5
# => 6
# => 7
# => 8
# => 9
# => 10




# 2. Use the `each` method of Array to iterate over [1, 2, 3, 4, 5, 6, 7, 8, 9, 10],
#   and print out the values greater than 5.

arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

# multi-line version
arr.each do |num|
  if num > 5
    puts "#{num}"
  end
end

=begin
# one line version
arr.each { |num| puts num if num > 5 }
=end



# 3. Using the following array [1, 2, 3, 4, 5, 6, 7, 8, 9, 10],
#   use the the `select` method to extract all the 
#   odd numbers into a new array.

arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

a1 = arr.select do |num|
  num.odd?
end

p a1



# book answer below:
=begin

arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

new_array = arr.select do |number|
  number % 2 != 0
end

p new_array

=end




# 4. Append 11 to the end of the original array. Prepend 0 to the beginning.

arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]


arr << 11       # add the number 11 to the end
arr.insert(0,0) # same as arr.unshift(0)  # add the number 0 to the front

p arr


=begin
arr = [1, 2, 3, 4]
arr.push(5) #=> [1, 2, 3, 4, 5]
arr << 6    #=> [1, 2, 3, 4, 5, 6]
unshift will add a new item to the beginning of an array.

arr.unshift(0) #=> [0, 1, 2, 3, 4, 5, 6]
With insert you can add a new element to an array at any position.

arr.insert(3, 'apple')  #=> [0, 1, 2, 'apple', 3, 4, 5, 6]
=end



# 5. Get rid of 11. And append a 3.

arr = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11]

arr.pop
arr << 3  # same as arr.push(3)

p arr




# 6. Get rid of duplicates without specifically removing any one value.

arr = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 3]

p arr.uniq!




# 7. What's the major difference between an Array and a Hash?


# Hashes have key-value pairs and the order isn't as important
#   because the hash contains a key value pair for referencing by key.

# Arrays are a sequence of elements and each element can be accessed by its index
#   beginning from 0.

hash = {dog: 'fido', cat: 'fluffy' }

array = ['fido', 'fluffy']

puts hash[:dog]
puts array[0]



# 8. Create a Hash, with one key-value pair, using both Ruby syntax styles.

hash = {:dog => 'fido'}   # old Ruby syntax style

hash2 = {dog: 'fido'}     # newer Ruby syntax style
                          # Note: this only works if your key is a symbol
                          # a bareword or a String
                          
puts hash[:dog]
puts hash2[:dog]



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




# 10.1 Can hash values be arrays?
# Yes!
a0 = ["la, li, lu, lay"]
h = {dog: a0}

puts h[:dog]
# => la, li, lu, lay

# 10.2 Can you have an array of hashes?(give examples)
# Sure!
h1 = {cat: 'sug'}
h2 = {wolf: 'lobo'}
h3 = {rabbit: 'bugs'}

arr = [h1, h2, h3]
puts arr
# => {:cat=>"sug"}
# => {:wolf=>"lobo"}
# => {:rabbit=>"bugs"}




# 11. Given the following data structures, write a program that copies the
#   information from the array into the empty hash that applies
#   to the correct person.

contact_data = [["joe@email.com", "123 Main st.", "555-123-4567"],
            ["sally@email.com", "404 Not Found Dr.", "123-234-3454"]]

contacts = {"Joe Smith" => {}, "Sally Johnson" => {}}

# Expected output:
#  {
#    "Joe Smith"=>{:email=>"joe@email.com", :address=>"123 Main st.", :phone=>"555-123-4567"},
#    "Sally Johnson"=>{:email=>"sally@email.com", :address=>"404 Not Found Dr.",  :phone=>"123-234-3454"}
#  }

contacts["Joe Smith"][:email] = contact_data[0][0]
contacts["Joe Smith"][:address] = contact_data[0][1]
contacts["Joe Smith"][:phone] = contact_data[0][2]
contacts["Sally Johnson"][:email] = contact_data[1][0]
contacts["Sally Johnson"][:address] = contact_data[1][1]
contacts["Sally Johnson"][:phone] = contact_data[1][2]

p contacts

# => {"Joe Smith"=>{:email=>"joe@email.com", :address=>"123 Main st.", :phone=>"555-123-4567"}, "Sally Johnson"=>{:email=>"sally@email.com", :address=>"404 Not Found Dr.", :phone=>"123-234-3454"}}



# 12. Using the hash you created from the previous exercise,
#   demonstrate how you would access Joe's email and Sally's phone number.


contact_data = [["joe@email.com", "123 Main st.", "555-123-4567"],
            ["sally@email.com", "404 Not Found Dr.", "123-234-3454"]]

contacts = {"Joe Smith" => {}, "Sally Johnson" => {}}

contacts["Joe Smith"][:email] = contact_data[0][0]
contacts["Joe Smith"][:address] = contact_data[0][1]
contacts["Joe Smith"][:phone] = contact_data[0][2]
contacts["Sally Johnson"][:email] = contact_data[1][0]
contacts["Sally Johnson"][:address] = contact_data[1][1]
contacts["Sally Johnson"][:phone] = contact_data[1][2]

# p contacts

puts "Joe's email is: #{contacts["Joe Smith"][:email]}"
puts "Sally's phone number is: #{contacts["Sally Johnson"][:phone]}"

# => Joe's email is: joe@email.com
# => Sally's phone number is: 123-234-3454




# 13. Use Ruby's Array method `delete_if` and String method `start_with?`
#   to delete all of the strings that begin with an "s" in the following array.

arr = ['snow', 'winter', 'ice', 'slippery', 'salted roads', 'white trees']

arr.delete_if do |name|
  name.start_with?("s")
end

p arr
  

# Then recreate the `arr` and get rid of all of the strings that start with
#   "s" or start with "w".

arr.insert(3, 'snow', 'slippery', 'salted roads')
p arr
arr.delete_if do |name|
  name.start_with?("s", "w")
end
p arr




# 14. Take the following array:
a = ['white snow', 'winter wonderland', 'melting ice',
     'slippery sidewalk', 'salted roads', 'white trees']
     
# and turn it into a new array that consists of strings containing one word.
#   (ex. ["white snow", etc...] ----> ["white", "snow", etc...])
# Look into using Array's `map` and `flatten` methods, as well as
#   String's `split` method.
#b = "white snow winter wonderland melting ice
 #    slippery sidewalk salted roads 'white trees".split(" ")
#p b

# `map` Calls the block, if given, with each element of self; 
#   returns a new Array whose elements are the return values from the block:
a = a.map do |s|
  s.split
end

a = a.flatten
p a

# => ["white", "snow", "winter", "wonderland", "melting", "ice", "slippery", "sidewalk", "salted", "roads", "white", "trees"]




# 15.
# What will the following program output?

hash1 = {shoes: "nike", "hat" => "adidas", :hoodie => true}
hash2 = {"hat" => "adidas", :shoes => "nike", hoodie: true}

if hash1 == hash2
  puts "These hashes are the same!"
else
  puts "These hashes are not the same!"
end


# => "These hashes are the same!"
# The key-value pairs are the same but they do use different syntax patterns.




# 16a.
# In exercise 11, we manually set the `contacts` hash values one by one.
# Now, programmatically loop or iterate over the `contacts` hash from ex 11,
#   and populate the assoc. data from the `contact_data` array.
# Hint: you'll probably need to iterate over ([:email, :address, :phone]),
#   and some helpful methods might be the Array `shift` and `first` methods.

# Note that this exercise is only concerned with dealing with 1 entry in the
#   `contacts` hash, like this:


contact_data = ["joe@email.com", "123 Main st.", "555-123-4567"]
contacts = {"Joe Smith" => {}}
fields = [:email, :address, :phone]

contacts.each do |name, hash|
    fields.each do |field|
        hash[field] = contact_data.shift
    end 
end

puts contacts

# => {"Joe Smith"=>{:email=>"joe@email.com", :address=>"123 Main st.", :phone=>"555-123-4567"}}

=begin
for i in contact_data do
    contacts["Joe Smith"][info[0]] = contact_data[0]
    contacts["Joe Smith"][info[1]] = contact_data[1]
    contacts["Joe Smith"][info[2]] = contact_data[2]
end

p contacts


# => {"Joe Smith"=>{:email=>"joe@email.com", :address=>"123 Main st.", :phone=>"555-123-4567"}}
=end




# 16b.

# And as a bonus, see if you can figure out how to make it work with
#   multiple entries in the `contacts` hash.

contact_data = [["joe@email.com", "123 Main st.", "555-123-4567"],
            ["sally@email.com", "404 Not Found Dr.", "123-234-3454"]]

contacts = {"Joe Smith" => {}, "Sally Johnson" => {}}

fields = [:email, :address, :phone]


contacts.each_with_index do |(name, hash), idx|
    fields.each do |field|
        hash[field] = contact_data[idx].shift
    end
end

p contacts


=begin
for i in contact_data do
contacts["Joe Smith"][info[0]] = contact_data[0][0]
contacts["Joe Smith"][info[1]] = contact_data[0][1]
contacts["Joe Smith"][info[2]] = contact_data[0][2]
contacts["Sally Johnson"][info[0]] = contact_data[1][0]
contacts["Sally Johnson"][info[1]] = contact_data[1][1]
contacts["Sally Johnson"][info[2]] = contact_data[1][2]
end

p contacts


# => {"Joe Smith"=>{:email=>"joe@email.com", :address=>"123 Main st.", :phone=>"555-123-4567"}, "Sally Johnson"=>{:email=>"sally@email.com", :address=>"404 Not Found Dr.", :phone=>"123-234-3454"}}
=end
