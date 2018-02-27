require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'

puts "Exercise 7"
puts "----------"

puts "Please enter a new store name: "
@new_store = gets.chomp

@new_store = Store.create(name: @new_store)

if @new_store.errors.any? # If there are errors, do something
  @new_store.errors.full_messages.each do |message|
    puts message
  end
end