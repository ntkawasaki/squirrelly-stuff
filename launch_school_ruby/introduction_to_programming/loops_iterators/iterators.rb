names = ['Bob', 'Joe', 'Steve', 'Janice', 'Susan', 'Helen']
names.each { |name| puts "#{name}" }  # when everything can be on one line

x = 1
names.each do |name|  # multi line with do and end
  puts "#{x}: #{name}"
  x += 1
end


