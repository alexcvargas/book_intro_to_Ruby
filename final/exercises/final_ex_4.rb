# 4. Append 11 to the end of the original array. Prepend 0 to the beginning.

arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]


arr << 11       # add the number 11 to the end
arr.insert(0,0) # same as arr.unshift(0)  # add the number 0 to the front

p arr


=begin
arr = [1, 2, 3, 4]
arr.push(5) #=> [1, 2, 3, 4, 5]
arr << 6    #=> [1, 2, 3, 4, 5, 6]
unshift will add a new item to the beginning of an array.

arr.unshift(0) #=> [0, 1, 2, 3, 4, 5, 6]
With insert you can add a new element to an array at any position.

arr.insert(3, 'apple')  #=> [0, 1, 2, 'apple', 3, 4, 5, 6]
=end