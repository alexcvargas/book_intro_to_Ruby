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