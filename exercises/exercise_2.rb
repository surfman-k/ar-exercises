require_relative '../setup'
require_relative './exercise_1'

puts "Exercise 2"
puts "----------"

@store1 = Store.find(1)

@store2 = Store.find(2)

@store2.update(name: "Winners")

puts @store1.name
puts @store2.name
