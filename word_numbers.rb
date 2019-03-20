# This time we want to write calculations using functions and get the results. Let's have a look at some examples:

# seven(times(five)) # must return 35
# four(plus(nine)) # must return 13
# eight(minus(three)) # must return 5
# six(divided_by(two)) # must return 3

# Requirements:

# - There must be a function for each number from 0 ("zero") to 9 ("nine")
# - There must be a function for each of the following mathematical operations: plus, minus, times, dividedBy (divided_by in Ruby)
# - Each calculation consist of exactly one operation and two numbers
# - The most outer function represents the left operand, the most inner function represents the right operand
# - Divison should be integer division, e.g eight(dividedBy(three()))/eight(divided_by(three)) should return 2, not 2.666666...

number_words = %w(zero one two three four five six seven eight nine)

number_words.each_with_index do |num_word, index|
  define_method(num_word) do |operation=nil|
    operation ? operation.call(index) : index
  end
end

def add(right)
  Proc.new do |left|
    left + right
  end
end

def minus(right)
  Proc.new do |left|
    left - right
  end
end

def times(right)
  Proc.new do |left|
    left * right
  end
end

def divided_by(right)
  Proc.new do |left|
    left / right
  end
end

six(divided_by(two))