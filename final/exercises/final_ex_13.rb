# 13. Use Ruby's Array method `delete_if` and String method `start_with?`
#   to delete all of the strings that begin with an "s" in the following array.

arr = ['snow', 'winter', 'ice', 'slippery', 'salted roads', 'white trees']

arr.delete_if do |name|
  name.start_with?("s")
end

p arr
  

# Then recreate the `arr` and get rid of all of the strings that start with
#   "s" or start with "w".

arr.insert(3, 'snow', 'slippery', 'salted roads')
p arr
arr.delete_if do |name|
  name.start_with?("s", "w")
end
p arr