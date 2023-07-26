# 4. What will the following code print to the screen?

def scream(words)
  words = words + "!!!!"
  return
  puts words
end

scream("Yippeee")

# nothing print to the screen
# =>
# return value is nil

# When you explicitly return from a method, Ruby exits that method immediately...
#   and the subsequent code within that method will not be executed.