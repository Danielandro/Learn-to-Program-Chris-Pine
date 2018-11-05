#create class for die

class Die
    #on instance creation, roll dice
    def initialize
        roll
    end

    #roll dice
    def roll
        @numberShowing = 1 + rand(6)
    end

    #return current number showing
    def showing 
        @numberShowing
    end

    def cheat(chosen_number)

        if (chosen_number > 0) && (chosen_number < 7)
            @numberShowing = chosen_number
        end
        
    end
end

dice = Die.new
dice.cheat(5)
puts dice.showing