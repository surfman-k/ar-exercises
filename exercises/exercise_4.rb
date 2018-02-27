require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'

puts "Exercise 4"
puts "----------"

Store.create({name: "Surrey", annual_revenue: 224000, mens_apparel: false, womens_apparel: true})
Store.create({name: "Whistler", annual_revenue: 1900000, mens_apparel: true, womens_apparel: false})
Store.create({name: "Yaletown", annual_revenue: 430000, mens_apparel: true, womens_apparel: true })

@mens_stores = Store.where(mens_apparel: true)

puts "-------Stores that carry men's apparel-------"
@mens_stores.each {|x|
puts "Name: #{x.name}, Annual Revenue: #{x.annual_revenue}"
}

@cheap_womens_stores = Store.where(womens_apparel: true).where(["#{Store.table_name}.annual_revenue < ?", 1000000])

puts "------Stores that carry women's apparel and make less than $1,000,000 annually"
@cheap_womens_stores.each {|x|
puts "Name: #{x.name}, Annual Revenue: #{x.annual_revenue}"
}