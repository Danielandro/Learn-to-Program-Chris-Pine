puts 'type in your words: '
word_array = [] 
word = gets.chomp #get the first word
while word != ''  #check word is not an empty string 
    word_array.push(word.capitalize) #capitalize and add word to array
    word = gets.chomp #get next word
end

word_array.each do |word|
    word < next_word
end
puts word_array
# puts word_array.sort #sort alphabetically. Print each word in array