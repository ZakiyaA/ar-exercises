require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'

puts "Exercise 4"
puts "----------"

# Your code goes below here ...
surrey = Store.create(name: "Surrey", annual_revenue: 224000, mens_apparel: false, womens_apparel: true)
whistler = Store.create(name: "Whistler", annual_revenue: 1260000, mens_apparel: true, womens_apparel: false)
yaletown = Store.create(name: "Yaletown", annual_revenue: 430000, mens_apparel: true, womens_apparel: true)

puts 'stores that carry mens apparel'
@mens_stores = Store.where(mens_apparel: true)
@mens_stores.all.each do |store|
  #the code here is called once for each user
  puts "store_name: #{store.name}", "store.annual_revenue: #{store.annual_revenue}"
end


puts "carry women's apparel and are generating less than $1M in annual revenue"
@womens_stores = Store.where(womens_apparel: true).where('annual_revenue < ?', 1000000)
@womens_stores.all.each do |store|
  #the code here is called once for each user
  puts store.name
end





