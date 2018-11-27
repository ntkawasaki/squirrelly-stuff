nums = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

nums.each { |i| puts i }

nums.each { |i| puts i if i > 5}

new = nums.select { |i| if i.odd? }
p new

