# = operator reassigns variables to address space of memory
a = "hi there"
b = a
a = "not here"

puts b  # hi there


# << mutates the caller. This will change the value in that address space. Any variables pointing to this new reflect the change
a = "hi there"
b = a
a << ", Bob"

puts b  # hi there, Bob


# some more examples
a = [1, 2, 3, 3]
b = a
c = a.uniq!

p a
p b
p c
p b


# another
def test(b)
  b.map! { |letter| "I like the letter: #{letter}"}
end

a = ['a', 'b', 'c']
p a
p test(a)
p a  # even inside of the method call, map! will change mutate the caller

