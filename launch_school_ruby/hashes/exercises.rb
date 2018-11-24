# family = {  
#   uncles: ["bob", "joe", "steve"],
#   sisters: ["jane", "jill", "beth"],
#   brothers: ["frank","rob","david"],
#   aunts: ["mary","sally","susan"]
# }

# p family.select { |k, v| (k == :sisters) || (k == :brothers) }
# p family.values_at(:brothers, :sisters)


# h1 = {
#   a: 1,
#   b: 2,
#   c: 3,
#   d: 4
# }


# h2 = {
#   a: 5,
#   b: 30,
#   c: 300,
#   d: 3
# }

# p h1.merge(h2)
# puts h1  # untouched
# # p h1.merge!(h2)
# puts h1  # different

# # can also use blocks
# p h1.merge(h2) { |key, v1, v2| v2 - v1 + 10 }


# # loop through hash, print keys, values, both
# my_hash = {
#   name: "Noah",
#   age: 23,
#   sport: "Wingsuit"
# }

# my_hash.each_key {|key| puts key }
# my_hash.each_value {|value| puts value }
# my_hash.each {|key, value| puts "Key: #{key}, Value: #{value}" }


# person = {name: 'Bob', occupation: 'web developer', hobbies: 'painting'}
# p person[:name]


# p my_hash.has_value?("Wingsuit")
# unless my_hash.has_value?("Wingsuit") 
#   puts "NO"
# else
#   puts "YES"
# end


# find anagrams
words =  ['demo', 'none', 'tied', 'evil', 'dome', 'mode', 'live',
  'fowl', 'veil', 'wolf', 'diet', 'vile', 'edit', 'tide',
  'flow', 'neon']


my_return_hash = {}
words.each do |word|
  # return sorted letters per each word
  key = word.split('').sort.join

  # if my_return_hash already has this current key, then add this word to its array. Else make a new array for this key
  if my_return_hash.has_key?(key)
    my_return_hash[key].push(word)
  else
    my_return_hash[key] = [word]
  end
end

my_return_hash.each { |k, v| puts "#{k} --> #{v}"}