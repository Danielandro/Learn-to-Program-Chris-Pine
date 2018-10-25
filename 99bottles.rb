bottles = 99

while bottles > 0
    if bottles > 1
        puts "#{bottles} bottles of beer on the wall,"
        puts "#{bottles} bottles of beer,"
        puts "you take one down and pass it around,"
        puts "#{bottles - 1} bottles of beer on the wall"
    else
        puts "#{bottles} bottle of beer on the wall,"
        puts "#{bottles} bottle of beer,"
        puts "you take one down and pass it around,"
        puts "#{bottles - 1} bottles of beer on the wall"
    end      

    bottles -= 1
end