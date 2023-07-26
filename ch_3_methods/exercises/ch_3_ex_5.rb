# 5.1 Edit the method definition in exercise #4 so that it does print words on the screen.

# example 4 code:
def scream(words)
  words = words + "!!!!"
#  return
  puts words
end

scream("Yippeee")

# by removing this explicit return ...the program does print to screen this time

# 5.2 What does it return now?
# => Yippeee!!!!
# return is nil because puts being the last argument in this method will return nil.