puts "First Name: "
first_name = gets.chomp

puts "Middle Name: "
middle_name = gets.chomp

puts "Last Name: "
last_name = gets.chomp

name_letters = first_name + middle_name + last_name
puts "Did you know there are #{name_letters.length} letters in your name #{first_name} #{middle_name} #{last_name}?"