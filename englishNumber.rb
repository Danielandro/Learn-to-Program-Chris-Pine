def englishNumber number 
    if number < 0 # positive numbers only
        return 'Please enter a non-negative number'
    end

    if number == 0
        return 'zero'
    end
    #all other numbers are valid
    numstring = '' # string to be returned

    onesPlace = ['one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight', 'nine'] #ones
    tensPlace = ['ten', 'twenty', 'thirty', 'fourty', 'fifty', 'sixty', 'seventy', 'eighty', 'ninety'] #tens
    teenagers = ['eleven', 'twelve', 'thirteen', 'fourteen', 'fifteen', 'sixteen', 'seventeen', 'eighteen', 'nineteen'] #teens
    
    #MILLIONS
    left = number # how much left to write
    write = number / 1_000_000 # part of number currently being written
    left = left - write*1_000_000

    if write > 0 # number has millions
        millions = englishNumber write #gets number of millions
        numstring = numstring + millions + ' million'
        if left > 0
            numstring = numstring + ' ' #adds space before next denomination
        end
    end

    #THOUSANDS    
    write = left / 1000 # part of number currently being written
    left = left - write*1000

    if write > 0 # number has thousands
        thousands = englishNumber write #gets number of thousands
        numstring = numstring + thousands + ' thousand'
        if left > 0
            numstring = numstring + ' ' #adds space before next denomination
        end
    end

    #HUNDREDS
    write = left / 100
    left = left - write*100

    if write > 0
        hundreds = englishNumber write #gets number of hundreds
        numstring = numstring + hundreds + ' hundred'
    
        if left > 0
            numstring = numstring + ' '
        end
    end

    #TENS
    write = left / 10
    left = left - write*10

    if write > 0
        if ((write == 1) && (left > 0)) #for teen numbers
            numstring = numstring + teenagers[left - 1]

            left = 0 #because number == 11..19

        else
            numstring = numstring + tensPlace[write-1] # number == 10, 20..
        end

        if left > 0
            numstring = numstring + ' '
        end
    end

    #ONES - only a number between 1..9 is left
    write = left
    left = 0 #nothing left

    if write > 0
        numstring = numstring + onesPlace[write - 1]
    end
    numstring
end

puts englishNumber 1_000_000_000
puts englishNumber 1_000_000_000_000
puts englishNumber 0
puts englishNumber 1
puts englishNumber 57
puts englishNumber 439
puts englishNumber 8912