# frozen_string_literal: true

# Animal
class Animal
  def speak
    'Hello'
  end
end

# GoodDog subclass from Animal
class GoodDog < Animal
  attr_accessor :name

  def initialize(i_name = 'Name Me Please')
    self.name = i_name
  end

  def speak
    super + ", my name is #{name}!"
  end
end

class Cat < Animal
end

sparky = GoodDog.new('Sparky')
felix = Cat.new

puts sparky.speak
felix.speak
