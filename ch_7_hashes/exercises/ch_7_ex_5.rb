# 7.5
# What method could you use to find out if a Hash contains a specific value in it?

person = {name: 'Bob', occupation: 'web developer', hobbies: 'painting'}

# p person.select { |k,v| (k == :name) && (v == "Bob") }

if person.value?("Bob")
  puts "Got it"
else
puts "Nope!"
end