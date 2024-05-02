def number_of_tins(number_of_servings)
  return (number_of_servings / 2)
  puts "Ruby exits the method before getting here"
end


returned_value = number_of_tins(6)
puts returned_value


# => 3