# frozen_string_literal: true

# Parent
class Parent
  def say_hi
    p 'Hey from parent'
  end
end

# Child
class Child < Parent
  def say_hi
    p 'Hey from child'
  end

  # Override send
  def send
    p 'custom send'
  end

  # def instance_of?
  #   p 'I am a fake instance'
  # end
end

puts Parent.superclass

son = Child.new
son.send
# How to still access the Object method
son.__send__ :say_hi

p son.instance_of? Child
p son.instance_of? Parent
