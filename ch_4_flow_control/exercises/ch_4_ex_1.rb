# Chapter 4 Exercises
# 1. Write down whether the following expression returns `true` or `false`.
# Then type the expressions into `irb` to see the results.
# 1a.
(32 * 4) >= 129
# step-by-step solution:
128 >= 129
# => false

# 1b.
false != !true
# step-by-step solution:
false != false # false does not equal false... is not true
# => false

# 1c.
true == 4
# => false
# 4 is a truthy value but it is not equal to the boolean of true.
# therefore, the answer is false

# 1d.
false == (847 == '847')
# step-by-step solution:
false == (false)
# the integer 847 does not equal the string '847'
false == false  # false does equal false... is true
# => true

# 1e.
(!true || (!(100 / 5) == 20) || ((328 / 4) == 82)) || false
# step-by-step solution:
(false || (!(100 / 5) == 20) || ((328 / 4) == 82)) || false
(false || (!(true) || ((328 / 4) == 82)) || false
(false || (!(true) || ((true)) || false
(false || (!(true) || ((true)) || false
(false || (false   || ((true)) || false
(false || (false   || ((true)) || false
(false ||              (true)) || false
(false || true)                || false
true                           || false
true || false
# => true