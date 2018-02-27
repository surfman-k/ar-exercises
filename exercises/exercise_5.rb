require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'

puts "Exercise 5"
puts "----------"

puts "Sum of all revenues: #{Store.sum(:annual_revenue)}"

@average = Store.sum(:annual_revenue)/Store.count

puts "Average Revenue of all stores: #{@average}"

puts "Stores that generate more than $1M in revenues: #{Store.where(["#{Store.table_name}.annual_revenue > ?", 1000000]).count}"