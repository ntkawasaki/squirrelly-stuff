def say(words='hello')
  puts words + '.' # puts parameter into local variable
end 

say()
say("noah")
say("dd")

# optional to leave off parenthesis
say "Hellooo"

## scoping exercise
a = 5

def some_method
  a = 3
end

# a => 5 because a = 3 is in a method definition. Method DEFINITIONS create their own scope
puts a

# num will change
num = 0
puts "num before #{num}"
[1, 2, 3].each do |i|
  num = i
  puts num
end
puts "num after #{num}"


x = 10
def some_method(number) 
  number = 7 # this implicitly is returned. Also reassigns whatever is passed in to 7
  puts number
end

some_method(x)


