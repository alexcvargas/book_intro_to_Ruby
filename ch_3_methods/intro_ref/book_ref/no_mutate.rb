a = [1, 2, 3]
# Example of a method definition that doesn't mutate the arguement.
def no_mutate(array)
  array.last
end

p "Before no_mutate method: #{a}"
no_mutate(a)
p "After no_mutate method: #{a}"