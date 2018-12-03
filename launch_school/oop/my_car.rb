# frozen_string_literal: true

# My Car
class MyCar
  # Documentation line
  attr_accessor   :color
  attr_reader     :year

  def initialize(i_year, i_color, i_model)
    @year = i_year
    @color = i_color
    @model = i_model
    @speed = 0
  end

  def current_speed
    puts "You are going at #{@speed} mph."
  end

  def speed_up(speed = 20)
    @speed += speed
    puts "You sped up by #{@speed} mph."
  end

  def brake(speed = 10)
    @speed -= speed
    puts "You slowed down by #{@speed} mph."
  end
  
  def shut_down
    @speed = 0
    puts "You came to a stop at #{@speed} mph."
  end

  def spray_paint(paint)
    self.color = paint
    puts "You're new #{paint} car looks beautiful!"
  end

  def self.mpg(miles, gallons)
    mileage = miles / gallons
    mileage
  end
  
  def what_is_self
    self
  end

  def to_s
    puts "My car is a #{color}, #{year}, #{@model}!"
  end
end

chevy = MyCar.new(2018, 'blue', 'Silverado')
chevy.speed_up
chevy.brake
chevy.shut_down

puts chevy.color
chevy.color = 'red'
puts chevy.color

chevy.spray_paint('green')
p MyCar.mpg(1000, 5)

chevy.what_is_self
chevy.to_s
