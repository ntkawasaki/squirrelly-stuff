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

sparky = GoodDog.new('Sparky', 6)
puts sparky.public_disclosure
