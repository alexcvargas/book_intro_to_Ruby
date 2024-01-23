# 7.1 Given a hash of family members, with keys as the title and an array of names
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