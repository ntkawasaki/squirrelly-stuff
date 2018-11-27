x = [1, 2, 3, 4, 5]
r = x.each do |a|
  a + 1
end

# prompt = ""
# count = 0
# until prompt == "stop" do
#   puts "In iteration: #{count}"
#   count += 1
#   puts "Continue?"
#   prompt = gets.strip.downcase
# end

array = ["hello", 2, 10.9, {:key => "value"}]
array.each_with_index { |key, index| puts "#{index}  =>  #{key}"}


def count_down(num)
  unless num <= 0
    puts "Number is currently: #{num}"
    num -= 1
    count_down(num)
  else 
    puts "Number is now: #{num}"
  end
end

count_down(10)
