def greeting(name, options = {})
  if options.empty?
    puts "My name is #{name}"
  else
    puts "My name is #{name} and I am #{options[:age]} and was born in #{options[:city]}."
  end
end

greeting("Noah")
greeting("Noah", {age: 20, city: "Stanford"})
# If a hashis the last argument, you can specify this without {}
greeting("Bob", age: 62, city: "New York City")

