puts "What year were you born? (Four digits are required)"
year = gets.chomp

puts "Which month were you born in? (Answer must be between 1-12)"
month = gets.chomp

puts "What day were you born on?"
day = gets.chomp

time = Time.new
your_earth_day = Time.mktime(year, month, day)
your_age = ((time - your_earth_day) / (60*60*24*365)).to_i #need to subract to convert to seconds first

puts "Time for birthday beats!!!"
count = 1
your_age.times { 
    puts "SPANK! That's #{count}"
    count += 1
}

