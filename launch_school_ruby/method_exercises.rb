def greeting(name="Noah")
  "Hello #{name}"
end

greeting

def multiply(a, b)
  a * b
end

x = multiply(10, 20)
puts x

def scream(words)
  words = words + "!!!!"
  puts "words before: #{words}"
  return
  puts "words after: #{words}"
end

scream("Yippeee")
