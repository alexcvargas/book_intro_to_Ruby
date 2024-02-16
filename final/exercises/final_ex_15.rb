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

=begin
# thought process below of what to expect
3 elements to hash1
shoes=>nike
hat=>adidas
hoodie=>true


3 elements to hash2
hat=>adidas
shoes=>nike
hoodie=>true
=end