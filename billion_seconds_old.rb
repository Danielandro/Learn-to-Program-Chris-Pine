puts "What year were you born? (Four digits are required)"
year = gets.chomp

puts "Which month were you born in? (Answer must be between 1-12)"
month = gets.chomp

puts "What day were you born on?"
day = gets.chomp

puts "What hour were you born in? (Use 24-hr time)"
hour = gets.chomp

puts "What minute were you born?"
minute = gets.chomp

puts "At how many seconds were you born?"
seconds = gets.chomp

your_earth_day = Time.mktime(year, month, day, hour, minute, seconds)

puts "Your birthday is #{your_earth_day}"
puts "You will turn one billion seconds old on: #{your_earth_day + 1_000_000_000}" 