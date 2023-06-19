# 2. Use the modulo operator, division, or a combination of both to take a 4 digit
#   number and find the digit in the:
#   1) thousands place
#   2) hundreds place
#   3) tens place
#   4) ones place

nums = 4321
thousands = nums / 1000
puts "Thousands digit = #{thousands}"
hundreds = (nums % 1000) / 100
puts "Hundreds digit = #{hundreds}"
tens = (nums % 100) / 10
puts "Tens digit = #{tens}"
ones = (nums % 10)
puts "Ones digit = #{ones}"
