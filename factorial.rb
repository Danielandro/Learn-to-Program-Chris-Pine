# output the factorials of 5, 6, 7 & 8

# factorial_5 = 5 * 4 * 3 * 2 * 1
# factorial_6 = 6* 5 * 4 * 3 * 2 * 1
# factorial_7 = 7 * 6 * 5 * 4 * 3 * 2 * 1
# factorial_8 = 8 * 7 * 6 * 5 * 4 * 3 * 2 * 1

# puts "Factorial 5: #{factorial_5}"
# puts "Factorial 6: #{factorial_6}"
# puts "Factorial 7: #{factorial_7}"
# puts "Factorial 8: #{factorial_8}"

n = 5

while n <= 8
  factorial = n
  current_number = n

  while current_number > 1
    current_number -= 1
    factorial *= current_number
  end

  puts "Factorial of #{n} is #{factorial}"
  n += 1
end

a = 3 > 4

case a 
when true
  puts "This true"
else
    puts "Lies demon!"
end