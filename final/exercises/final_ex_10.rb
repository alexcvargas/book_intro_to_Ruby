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