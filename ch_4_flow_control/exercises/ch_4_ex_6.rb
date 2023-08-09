# 6. Write down whether the expressions return `true` or `false` or raise an error.
#   Then, type the expressions into `irb` to see the results.

# 6a.
(32 * 4) >= "129"
# step-by-step:
128 >= "129"
# integer compared to string in double quotes raises the following error:
#   comparison of Integer with String failed (ArgumentError)
# => false
# even if we changed 128 >= "128" we still get the same error
#   you cannot compare an integer with a string in double quotes


# 6b.
847 == '847'
# => false - integer compared to a string in single quotes results in false

# 6c.
'847' < '846'
# step-by-step:
# 1st char eval: 8 < 8  # false..go Next
# 2nd char eval: 4 < 4  # false..go Next
# 3rd char eval: 7 < 6  # false ..end of string
# => false

# 6d.
'847' > '846'
# 1st char eval: 8 > 8  # false..go Next
# 2nd char eval: 4 > 4  # false..go Next
# 3rd char eval: 7 > 6  # true..end of string
# => true

# 6e.
'847' > '8478'
# 1st char eval: 8 > 8  # false..go Next
# 2nd char eval: 4 > 4  # false..go Next
# 3rd char eval: 7 > 7  # false..end of shortest length string
                        # and Thus, the rule is now:
                        # the shorter string < longer string
# in our case...the shorter string is said to be greater than the longer string
#   which is false
# => false

# 6f.
'847' < '8478'
# 1st char eval: 8 < 8  # false..go Next
# 2nd char eval: 4 < 4  # false..go Next
# 3rd char eval: 7 < 7  # false..end of shortest length string
                        # and Thus, the rule is now:
                        # the shorter string < longer string
# in our case...the shorter string is said to be < longer string
# which is true
# => true
