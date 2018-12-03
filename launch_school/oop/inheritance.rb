# frozen_string_literal: true

# Animal
class Animal
  attr_accessor :name, :age, :color
  def initialize(i_name)
    @name = i_name
  end

  def speak
    'Hello'
  end
end

# GoodDog subclass
class GoodDog < Animal
  def initialize(i_name, i_color = 'brown')
    super(i_name)
    @color = i_color
  end

  def speak
    super + ", my name is #{@name}!"
  end
end

# Cat subclass
class Cat < Animal
end

# BadDog subclass
class BadDog < Animal
  def initialize(i_age, i_name)
    super(i_name)
    @age = i_age
  end
end

bane = GoodDog.new('Banester', 'brown')
puts bane.name
puts bane.color
puts bane.speak

jers = BadDog.new(2, 'Jersey')
puts jers.age
