x = 0
while x <= 10 do
  if x.odd?
    puts "x: #{x}"
  end
  x += 1
end

puts "\n"

y = 0
until y >= 10 do
  if y == 3
    y += 1
    next
  elsif y.odd?
    puts "y: #{y}"
  end
  y += 1
end

puts "\n"

z = 0
until z >= 10 do
  if z ==7
    break
  elsif z.odd?
    puts "z: #{z}"
  end
  z +=1
end
