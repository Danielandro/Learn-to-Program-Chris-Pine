puts 'CALCULATE LEAP YEARS'
puts 'Starting year: '
starting_year = gets.chomp

puts 'Ending year: '
ending_year = gets.chomp
puts ''
puts 'The leap years between ' + starting_year + ' & ' + ending_year + ' are:'
(starting_year.to_i..ending_year.to_i).map do |year|
    if (year % 4 == 0 && year % 100 != 0) || (year % 400 == 0)
        puts year
    end
end