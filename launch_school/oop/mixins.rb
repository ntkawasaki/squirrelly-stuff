# frozen_string_literal: true

# Swimmable
module Swimmable
  def swim
    'I am swimming!'
  end
end

# Walkable
module Walkable
  def swim
    'I am walking'
  end
end

# Climbable
module Climbable
  def climb
    'I am climbing'
  end
end

# High level Animal
class Animal
  include Walkable

  def speak
    'Hello'
  end
end

# Fish subclass that can swim
class Fish < Animal
  include Swimmable
end

# Mammal subclass
class Mammal < Animal
end

# Cat subclass cannot swim
class Cat < Mammal
end

# Dog subclass can swim
class Dog < Mammal
  include Swimmable
  include Climbable
end

sparky = Dog.new
neemo  = Fish.new
paws   = Cat.new

puts sparky.swim
puts neemo.swim
puts paws.swim

puts '---Animal method lookup---'
puts Dog.ancestors
