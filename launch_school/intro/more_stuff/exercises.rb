strings = [
  "laboratory",
  "experiment",
  "Pans Labyrinth",
  "elaborate",
  "polar bear"
]

strings.each { |s| puts "#{s}: YES" if s =~ /lab/ }


# What will this print?
def execute(&block)
  puts block.class
  block.call
end

execute { puts "Hello from inside the execute method!" }

