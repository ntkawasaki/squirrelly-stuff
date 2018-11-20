a = 10

# Can only do string interpolation with double quotes
puts "This is a: #{a}"

# Symbols: when you want to reference something like a string but don't ever intend to print it to the screen or change it
puts :name.class


puts '12'.to_i + 2
puts '50 soifajofi ad oiadf'.to_i + 10
puts 'hello there 4.555'.to_f + 3

h = {:name => "Noah", :sport => "Wingsuiting", :company => "Looker"}


puts h[:name] 
puts h[:sport] 
puts h[:company] 


# Exercises
puts "\nEXERCISES:\n"

puts "Noah" + " " + "Kawasaki"

num = 3294
puts "Thousands   #{num / 1000}"
puts "Hundredths  #{(num / 100 % 10)}"
puts "Tens        #{num / 10 % 100 % 10}"
puts "Ones        #{num % 1000 % 100 % 10}"

movies = {
  :jaws            => 1997,
  :interstellar    => 2012,
  :inception       => 2008
}

puts "\nHASH"
puts movies[:jaws]
puts movies[:interstellar]
puts movies[:inception]

puts "\nARRAY"
movies_arr = [1997, 2012, 2008]
puts movies_arr[0]
puts movies_arr[1]
puts movies_arr[2]

puts "\nFACTORIAL"
puts 5 * 4 * 3 * 2 * 1

puts "\nFLOAT SQUARES"
puts 4.3 * 4.3
puts 16.0 ** 2

puts 100 ** 2