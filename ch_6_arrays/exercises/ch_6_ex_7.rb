# 6.7 Use the 'each_with_index' method to iterate through an array of your
#   creation that prints each index and value of the array.

alphabet = ["Aa", "Bb", "Cc", "Dd", "Ee"]
alphabet.each_with_index do |letter_pair, idx|
  puts "#{letter_pair} is at  #{idx} index"
end

# each_with_index iterates through each element in an array, and extracts
#   the element, as well as the index, where index is the second argument
#   of a block.