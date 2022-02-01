require_relative '../setup'
require_relative './exercise_1'

puts "Exercise 2"
puts "----------"

# Your code goes here ...
@store1 = Store.first
@store2 = Store.where(name: 'Richmond')
@store1.update(name: 'Whitby')


puts "store1------------"
p @store1
puts "Store2------------"
p @store2