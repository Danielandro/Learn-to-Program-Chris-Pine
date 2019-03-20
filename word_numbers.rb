
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