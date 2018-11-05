#Make an OrangeTree class. 
#It should have a  height method which returns its height
#oneYearPasses method, which, when called, ages the tree one year. Each year the tree grows taller (however much you think an orange tree should grow in a year), and after some number of years (again, your call) the tree should die. 
#For the first few years, it should not produce fruit, but after a while it should, and I guess that older trees produce more each year than younger trees... whatever you think makes most sense.
#countTheOranges (which returns the number of oranges on the tree)
#pickAnOrange (which reduces the @orangeCount by one and returns a string telling you how delicious the orange was, or else it just tells you that there are no more oranges to pick this year). 
#Make sure that any oranges you don't pick one year fall off before the next year.

class OrangeTree
    def initialize
        @tree_height = 0
        @age = 0
        @fruit = 0
    end

    def height
        @tree_height
    end

    def oneYearPasses
        if @age > 10
            puts 'The tree is dead!!'
            exit                        
        end
        @age = @age + 1
        @tree_height = @tree_height + 10
    end

    def produceFruit
        if @age > 2
            @fruit = @age ** 2
        else
           puts 'Sorry, no fruit yet' 
        end
    end
end