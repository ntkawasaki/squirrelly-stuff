# frozen_string_literal: true
require 'date'

# module CanTow
module CanTow
  def towable?(weight)
    weight < 2000
  end
end

# Vehicle parent class
class Vehicle
  attr_accessor        :color, :model
  attr_reader          :year
  @@num_vehicles = 0

  def initialize(i_year, i_color, i_model)
    @year = i_year
    @color = i_color
    @model = i_model
    @speed = 0
    @@num_vehicles += 1
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

  def self.number_of_vehicles
    @@num_vehicles
  end

  def age
    "Your #{model} is #{calculate_age} years old"
  end

  private

  def calculate_age
    Date.today.year - @year
  end
end

# MyCar subclass
class MyCar < Vehicle
  NUM_DOORS = 4
end

# MyTruck subclass
class MyTruck < Vehicle
  include CanTow
  NUM_DOORS = 2
end

# Exercises
car = MyCar.new(2006, 'black', 'prius')
truck = MyTruck.new(2015, 'red', 'tesla')

puts Vehicle.number_of_vehicles
car.speed_up
puts truck.towable?(1000)

# Print ancestors
puts "Vehicle:\n"
puts Vehicle.ancestors
puts "MyCar:\n"
puts MyCar.ancestors
puts "MyTruck:\n"
puts MyTruck.ancestors

# Make sure all methods still work for car
car.current_speed
car.speed_up(speed = 50)
car.current_speed
car.brake(speed = 10)
car.current_speed
car.shut_down
car.current_speed
puts car.what_is_self

puts car.color
puts car.year

car.spray_paint('yellow')
puts car.color
car.color = 'red'
puts car.color

# Make sure all methods still work for truck
truck.current_speed
truck.speed_up(speed = 50)
truck.current_speed
truck.brake(speed = 10)
truck.current_speed
truck.shut_down
truck.current_speed
puts truck.what_is_self

puts truck.color
puts truck.year

truck.spray_paint('yellow')
puts truck.color
truck.color = 'red'
puts truck.color

# Instance Methods
puts Vehicle.mpg(50, 10)
puts Vehicle.number_of_vehicles

puts car.age

# Student class
class Student
  attr_accessor :name

  def initialize(i_name, i_grade)
    @name = i_name
    @grade = i_grade
  end

  def better_grade_than?(other_student)
    grade > other_student.grade ? 'Yes' : 'No'
  end

  protected

  def grade
    @grade
  end
end

bob = Student.new('Bob', 99)
john = Student.new('John', 50)

puts bob.better_grade_than?(john)
puts john.better_grade_than?(bob)
