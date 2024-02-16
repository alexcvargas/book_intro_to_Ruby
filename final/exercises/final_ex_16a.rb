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













=begin
answer = case
    when contact_data[0] == "joe@email.com"
        contacts["Joe Smith"][:email] = contact_data[0]
        puts "hello world"
        
        
        
    when contact_data[1] == "123 Main st."
        puts "streets"
    else
        "error"
    end

puts answer

puts contacts
=end



=begin
to_h → new_hash
to_h {|item| ... } → new_hash
Returns a new Hash formed from self.

When a block is given, calls the block with each array element; the block must return a 2-element Array whose two elements form a key-value pair in the returned Hash:

a = ['foo', :bar, 1, [2, 3], {baz: 4}]
h = a.to_h {|item| [item, item] }
h # => {"foo"=>"foo", :bar=>:bar, 1=>1, [2, 3]=>[2, 3], {:baz=>4}=>{:baz=>4}}
When no block is given, self must be an Array of 2-element sub-arrays, each sub-array is formed into a key-value pair in the new Hash:

[].to_h # => {}
a = [['foo', 'zero'], ['bar', 'one'], ['baz', 'two']]
h = a.to_h
h # => {"foo"=>"zero", "bar"=>"one", "baz"=>"two"}
=end