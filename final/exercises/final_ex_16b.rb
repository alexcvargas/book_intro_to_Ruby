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