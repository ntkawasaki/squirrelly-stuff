# frozen_string_literal: true

# Sick module
module Mammal
  # Dog
  class Dog
    def speak(sound)
      p sound.to_s
    end
  end

  # Cat
  class Cat
    def say_name(name)
      p name.to_s
    end
  end

  def self.some_method(num)
    num**2
  end
end

buddy = Mammal::Dog.new
buddy.speak('yolo')

felix = Mammal::Cat.new
felix.say_name('Felix')

value = Mammal.some_method(5)
p value
