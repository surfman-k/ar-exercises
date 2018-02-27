require_relative '../setup'

puts "Exercise 1"
puts "----------"

class Store < ActiveRecord::Base
	has_many :employees
	validates :name, presence: true, length: { minimum: 3 }
	validates :annual_revenue, numericality: { greater_than_or_equal_to: 0}
end

Store.create({name: "Burnaby", annual_revenue: 300000, mens_apparel: true, womens_apparel: true})
Store.create({name: "Richmond", annual_revenue: 1260000, mens_apparel: false, womens_apparel: true})
Store.create({name: "Gastown", annual_revenue: 190000, mens_apparel: true, womens_apparel: false })

puts Store.count