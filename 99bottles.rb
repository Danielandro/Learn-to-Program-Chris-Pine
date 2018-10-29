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
#instead of numbers, spell each word out

#define method, taking a number of bottles as a parameter
#check for thousands, hundreds, teens + tens, ones
#construct a string representing the number of bottles 
#construct lyrical strings - OWN METHOD??
#return lyrical string
#RECURSIVE??

def bottle_count number_of_bottles
    if number < 1 # positive numbers only
        return 'Please enter a number greater than zero'
    end

    #all other numbers are valid
    numstring = '' # string to be returned

    onesPlace = ['one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight', 'nine'] #ones
    tensPlace = ['ten', 'twenty', 'thirty', 'fourty', 'fifty', 'sixty', 'seventy', 'eighty', 'ninety'] #tens
    teenagers = ['eleven', 'twelve', 'thirteen', 'fourteen', 'fifteen', 'sixteen', 'seventeen', 'eighteen', 'nineteen'] #teens

    #THOUSANDS    
    left = number_of_bottles # how much left to write
    write = number_of_bottles / 1000 # part of number currently being written
    
    if write > 0 # number has thousands
        thousands = englishNumber write #gets number of thousands
        numstring = numstring + thousands + ' thousand'
        # if left > 0
        #     numstring = numstring + ' ' #adds space before next denomination
        # end
       
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

    numstring #return string
end

# englishNumber(left - 1)
