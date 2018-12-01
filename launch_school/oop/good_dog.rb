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
  attr_accessor :name, :height, :weight

  def initialize(i_name, i_height, i_weight)
    @name = i_name
    @height = i_height
    @weight = i_weight
  end

  def change_info(new_name, new_height, new_weight)
    self.name = new_name
    self.height = new_height
    self.weight = new_weight
  end

  def speak
    "#{name} says arf!"
  end

  def info
    "#{name} weighs #{weight} and is #{height} tall."
  end
end

sparky = GoodDog.new('Sparky', '5 feet', '10 pounds')
puts sparky.info

sparky.change_info('Spartacus', '24 inches', '45 lbs')
puts sparky.info

# Lookup path with ancestors method
puts 'GoodDog ancestors:'
puts "\t#{GoodDog.ancestors}"
