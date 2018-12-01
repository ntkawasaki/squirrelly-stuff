# frozen_string_literal: true

# # Speak
# module Speak
#   def speak(sound)
#     puts sound.to_s
#   end
# end

# Doggy
class GoodDog
  # include Speak
  attr_accessor :name, :height, :weight, :age
  @@number_of_dogs = 0
  DOG_YEARS = 7

  def initialize(i_name, i_height, i_weight, i_age)
    @name = i_name
    @height = i_height
    @weight = i_weight
    @age = i_age
    @@number_of_dogs += 1
  end

  def self.what_am_i
    puts 'I am a GoodDog!'
  end

  def self.total_number_of_dogs
    @@number_of_dogs
  end

  def change_info(new_name, new_height, new_weight, new_age)
    self.name = new_name
    self.height = new_height
    self.weight = new_weight
    self.age = new_age
  end

  def speak
    "#{name} says arf!"
  end

  def info
    "#{name} weighs #{weight} and is #{height} tall. "\
    "Hes #{age * DOG_YEARS} dog years old too!"
  end

  def to_s
    "This dog's name is #{name} and it is #{age * DOG_YEARS} in dog years."
  end

  def what_is_self
    self
  end
end

sparky = GoodDog.new('Sparky', '5 feet', '10 pounds', 3)
puts sparky.info
puts sparky

sparky.change_info('Spartacus', '24 inches', '45 lbs', 5)
puts sparky.info

# Lookup path with ancestors method
# puts 'GoodDog ancestors:'
# puts "\t#{GoodDog.ancestors}"

bane = GoodDog.new('Bane', '2 feet', '10 pounds', 7)
puts bane.info
bane.age = 9
puts bane.info
p bane.what_is_self
