## block
def take_block(number, &block)
  block.call(number)
end


# This is actually taking the argument do/end as its block
number = 42
take_block(number) do |num|
  puts "Block being called in a method! Number is #{num}"
end


## procs
talk = Proc.new do |name|
  puts "I am talking to #{name}"
end

talk.call("Bob")


# modify take_block
def take_proc(proc)
  [1, 2, 3, 4, 5].each do |num| 
    proc.call num
  end
end

proc = Proc.new do |number|
  puts "#{number}. Proc being called in the method!"
end

take_proc(proc)
