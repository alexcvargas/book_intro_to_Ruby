# ch_7_exercises_combined.rb

# 1. Given a hash of family members, with keys as the title and an array of names
#   as the values, use Ruby's built-in `select` method to gather only siblings'
#   names into a new array.

family = {  uncles: ["bob", "joe", "steve"],
            sisters: ["jane", "jill", "beth"],
            brothers: ["frank","rob","david"],
            aunts: ["mary","sally","susan"]
          }
          

family = {  uncles: ["bob", "joe", "steve"],
            sisters: ["jane", "jill", "beth"],
            brothers: ["frank","rob","david"],
            aunts: ["mary","sally","susan"]
          }
          

fam = family
siblings = fam.select {|key, value| key == :sisters || key == :brothers }

#arr = siblings
#p arr
# => {:sisters=>["jane", "jill", "beth"], :brothers=>["frank", "rob", "david"]}

#arr = siblings.values
#p arr
# => [["jane", "jill", "beth"], ["frank", "rob", "david"]]

arr = siblings.values.flatten
p arr
# => ["jane", "jill", "beth", "frank", "rob", "david"]



#The following is extra work that helped me get to the cleaner solution above...
=begin         

h = family
e = h.select {|key, value| key == :sisters }
f = h.select {|key, value| key == :brothers }
puts "siblings are made up of #{e} and #{f}"
=end

=begin
# the following works but it is not using Ruby's built-in `select` method.
p "siblings are the following:"
p family.fetch_values(:sisters, :brothers)

# => "siblings are the following:"
# => [["jane", "jill", "beth"], ["frank", "rob", "david"]]

=end


# P.S. e = h.select {|key, value| key == :sisters || key == :brothers }
# using the || can save you the step of having to do extra work to fit in more logic





#2. 
cat = {name: "whiskers"}
weight = {weight: "10 lbs"}
puts cat.merge(weight)  # => {:name=>whiskers, :weight=> 10 lbs}
puts cat                # => {:name=>whiskers}     
puts weight             # => {:weight=>10 lbs}        
puts cat.merge!(weight) # => {:name=>whiskers, :weight=> 10 lbs}
puts cat                # => {:name=>whiskers, :weight=> 10 lbs}         
puts weight             # => {:weight=>10 lbs}

# Note: merge with the bang is destructive and mutates the calling hash
#   while merge without the bang is not

# 3.
# simple solution from online...see individual exercises for my take on the solution...
opposites = {positive: "negative", up: "down", right: "left"}

opposites.each_key { |key| puts key }
opposites.each_value { |value| puts value }
opposites.each { |key, value| puts "The opposite of #{key} is #{value}" }


# 7.4
# Given the following expression, how would you access the name of the person?

person = {name: 'Bob', occupation: 'web developer', hobbies: 'painting'}

p person[:name]


# 7.5
# What method could you use to find out if a Hash contains a specific value in it?

person = {name: 'Bob', occupation: 'web developer', hobbies: 'painting'}

# p person.select { |k,v| (k == :name) && (v == "Bob") }

if person.value?("Bob")
  puts "Got it"
else
puts "Nope!"
end


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

