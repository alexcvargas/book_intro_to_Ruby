# 8. Create a Hash, with one key-value pair, using both Ruby syntax styles.

hash = {:dog => 'fido'}   # old Ruby syntax style

hash2 = {dog: 'fido'}     # newer Ruby syntax style
                          # Note: this only works if your key is a symbol
                          # a bareword or a String


puts hash[:dog]
puts hash2[:dog]