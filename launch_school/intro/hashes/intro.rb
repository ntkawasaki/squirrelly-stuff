old_syntax = {:name => "Bob"}
new_syntax = {name: "John"}

p old_syntax[:name]
p new_syntax[:name]

person = {height: '6 ft', weight: '160 lbs'}
person[:name] = "Noah"
person[:age] = "23"
p person

person.delete(:age)
p person


# merge
person.merge!(old_syntax)
p person


# Different ways to make Hash keys. When not using a symbol, you must use old syntax =>

# Note how accessing the values is now different also
{"height" => 60}['height']
{["height"] => 60}["height"]
{1 => "one"}
{45.1 => "hello"}
{{key: "key"} => "value"}