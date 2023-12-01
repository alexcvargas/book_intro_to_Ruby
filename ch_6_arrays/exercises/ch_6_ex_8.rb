# 6.8
# Write a program that iterates over an array and builds a new array
#   that is the result of incrementing each value in the original array
#   by a value of 2.
# You should have two arrays at the end of this program...
# a) The original array
# b) The new array you have created.

# Print both arrays to the screen using the `p` method instead of `puts`.

# Solution one way
=begin
nums = [1, 2, 3, 4, 5]
nums2 = nums.map {|x| 2+x}

p nums
p nums2
=end


# Solution a different way
=begin
nums = [1, 2, 3, 4, 5]
nums2 = []

nums.each do |n|
  nums2 << n + 2
end

p nums
p nums2
=end


# Solution another different way
nums = [1, 2, 3, 4, 5]
nums2 = nums.map do |n|
  n + 2
end

p nums
p nums2
