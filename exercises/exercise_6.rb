require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

class Employee < ActiveRecord::Base
	belongs_to :store
end

@store1.employees.create(first_name: "Khurram", last_name: "Virani", hourly_rate: 60)
@store1.employees.create(first_name: "Dean", last_name: "Martin", hourly_rate: 10)
@store1.employees.create(first_name: "John", last_name: "Wayne", hourly_rate: 40)
@store1.employees.create(first_name: "Billy", last_name: "The Kid", hourly_rate: 50)
@store1.employees.create(first_name: "Lucky", last_name: "Luke", hourly_rate: 50)

@store2.employees.create(first_name: "Alex", last_name: "Turner", hourly_rate: 40)
@store2.employees.create(first_name: "Matt", last_name: "Helders", hourly_rate: 40)
@store2.employees.create(first_name: "Nick", last_name: "O'Malley", hourly_rate: 60)
@store2.employees.create(first_name: "Pink", last_name: "Council", hourly_rate: 70)
@store2.employees.create(first_name: "Floyd", last_name: "Anders", hourly_rate: 40)