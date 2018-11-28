# # Arrays
# nums = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

# nums.each { |i| puts i }

# nums.each { |i| puts i if i > 5}

# new = nums.select { |i| i.odd? }
# p new

# nums << 11
# p nums

# nums.unshift(0)
# p nums

# nums.delete(11)
# nums.push(3)
# p nums

# nums.uniq!
# p nums


# # Hashes
# h = {:old_key => "value"}
# p h
# h = {old_key: "value"}
# p h

# h = {a:1, b:2, c:3, d:4}
# p h[:b]
# h[:e] = 5
# p h
# h.delete_if { |k, v| v < 3.5 }
# p h

# # hash values as arrays
# hash = {names: ['bob', 'joe', 'susan']}

# # array of hashes
# arr = [{name: 'bob'}, {name: 'joe'}, {name: 'susan'}]
# puts "\n"

# Write a program that moves the information from the array into the empty hash that applies to the correct person.
contact_array = [
  ["joe@email.com", "123 Main st.", "555-123-4567"],
  ["sally@email.com", "404 Not Found Dr.", "123-234-3454"]
]

contacts = {
  "Joe Smith" => {}, 
  "Sally Johnson" => {}
}

keys = [:email, :address, :phone]

# My solution that checks if names =, doesnt assume identical positioning
contact_array.each do |contact|
  email_name = contact[0].split("@").first
  info = keys.zip(contact).to_h

  contacts.each do |key, value|
    first_name = key.split(' ').first.downcase

    if email_name == first_name
      contacts[key] = info
    end
  end
end

contacts.each do |k, v|
  puts "k: #{k} ---- #{v}"
end

puts contacts["Joe Smith"][:email]
puts contacts["Sally Johnson"][:phone]


# Launch School Solution
contact_data = [["joe@email.com", "123 Main st.", "555-123-4567"],
            ["sally@email.com", "404 Not Found Dr.", "123-234-3454"]]
contacts = {"Joe Smith" => {}, "Sally Johnson" => {}}
fields = [:email, :address, :phone]

contacts.each_with_index do |(name, hash), idx|
  fields.each do |field|
    hash[field] = contact_data[idx].shift
  end
end

arr = ['snow', 'winter', 'ice', 'slippery', 'salted roads', 'white trees']
arr.delete_if { |item| item.start_with?('s', 'w')}
p arr

a = ['white snow', 'winter wonderland', 'melting ice',
  'slippery sidewalk', 'salted roads', 'white trees']

b = a.map { |item| item.split(' ')}.flatten
p b

# What does this output?
hash1 = {shoes: "nike", "hat" => "adidas", :hoodie => true}
hash2 = {"hat" => "adidas", :shoes => "nike", hoodie: true}

if hash1 == hash2
  puts "These hashes are the same!"
else
  puts 'These hashes are not the same!'
end
