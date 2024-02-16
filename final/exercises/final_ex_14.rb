# 14. Take the following array:
a = ['white snow', 'winter wonderland', 'melting ice',
     'slippery sidewalk', 'salted roads', 'white trees']
     
# and turn it into a new array that consists of strings containing one word.
#   (ex. ["white snow", etc...] ----> ["white", "snow", etc...])
# Look into using Array's `map` and `flatten` methods, as well as
#   String's `split` method.
#b = "white snow winter wonderland melting ice
 #    slippery sidewalk salted roads 'white trees".split(" ")
#p b

# `map` Calls the block, if given, with each element of self; 
#   returns a new Array whose elements are the return values from the block:
a = a.map do |s|
  s.split
end

a = a.flatten
p a