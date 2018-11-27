a = [1, 2, 3]

# Example of a method that modifies the argument permanently
# pop method mutates the caller
def mutate(array)
  array.pop
end

p "Before mutate method: #{a}"
mutate(a)
p "After mutate method: #{a}"


# Example of method that does not mutate the caller
def non_mutate(array)
  array.last
end

p "Before non mutate method: #{a}"
non_mutate(a)
p "After non mutate method: #{a}"

# You have to  memorize/read docs to know if a method mutates the caller


