# frozen_string_literal: true

# GoodDog
class GoodDog
  DOG_YEARS = 7

  attr_accessor :name, :age

  def initialize(i_name, i_age)
    @name = i_name
    @age = i_age
  end

  def public_disclosure
    "#{name} in human years is #{human_years}"
  end

  # private methods can only be used in other methods inside
  # the class, when called without self
  private

  def human_years
    age * DOG_YEARS
  end
end

# Animal class
class Animal
  def a_public_method
    'Will this work? ' + a_protected_method
  end

  protected

  def a_protected_method
    'Yes, Im protected'
  end
end

sparky = GoodDog.new('Sparky', 6)
puts sparky.public_disclosure

bane = Animal.new
puts bane.a_public_method
