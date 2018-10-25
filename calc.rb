# puts "There are #{24 * 365} hours in a year." 

# puts "In one year, there are #{(60 * 24) * (365 * 10)} minutes."

# puts "I am #{((60 * 60 * 24) * 267) + (60 * 60 * 24) * (365 * 30)} seconds old"

# #seconds in a year (60 * 60 * 24 * 365)
# p 1298_000_000 / (60 * 60 * 24 * 365)

p "Hello World" + ", welcome to Crokson"
p ""
p "Goodbye World " * 4

p "12" + "12"
# p "12" + 12
p "12   +   12"

p 2 * 5
# p "2" + 5 #no bueno
# p "2" * "5" #no bueno
p "2  *  5"

puts 'You\'re swell!'
puts 'backslash at the end of a string:  \\'
puts 'up\\down'
puts 'up\down'

print 'up\\down'

puts (('Hello chum, what is your name?').center(60))
name = gets.chomp
puts (("Your name is #{name}? What a nice name").center(60))
puts 'Pleased to meet you #{name}'