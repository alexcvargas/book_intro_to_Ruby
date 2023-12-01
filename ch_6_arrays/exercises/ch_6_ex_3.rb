# 6.3 How do you return the word "example" from the following array?
arr = [["test", "hello", "world"],["example", "mem"]]


#b = arr.select { |ex| ex == ["example", "mem"] }
# this is incomplete because it only returns the last array
# the following two are just hard coded methods to just complete the task with
#   no flexibility if the "example" were to move positions within the array.

arr.last.first
arr[1][0]