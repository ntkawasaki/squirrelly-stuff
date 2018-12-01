def doubler(start)
  puts start
  unless start >= 10
    doubler(start * 2)
  end
end

doubler(2)

puts "\nfibonacci:"

def fibonacci(number)
  if number < 2
    number
  else
    fibonacci(number - 1) + fibonacci(number - 2)
  end
end

puts fibonacci(4)


