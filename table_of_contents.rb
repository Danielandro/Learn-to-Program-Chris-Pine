puts ('Table of Contents').center(50)
puts ''
=begin
puts 'Chapter 1: Numbers'.ljust(0) + 'page 1'.rjust(30)
puts 'Chapter 2: Letters'.ljust(0) + 'page 72'.rjust(30)
puts 'Chapter 3: Variables'.ljust(0) + 'page 118'.rjust(28)
=end

#array of all info
book_array = [
              ['Chapter 1:  Numbers', 'page 1'],
              ['Chapter 2:  Letters', 'page 72'],
              ['Chapter 3:  Variables', 'page 118']
            ]
#structure info
book_array.each do |chapter|
    puts chapter[0].ljust(25) + chapter[1].rjust(25) #print out info
end
