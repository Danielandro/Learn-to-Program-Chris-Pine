# Write a program that prints out groups of words that are anagrams. 
# Anagrams are words that have the same exact letters in them but in a different order. 
# Your output should look something like this: 
# ["demo", "dome", "mode"]
# ["neon", "none"]
# (etc)

words =  ['demo', 'none', 'tied', 'evil', 'dome', 'mode', 'live',
          'fowl', 'veil', 'wolf', 'diet', 'vile', 'edit', 'tide',
          'flow', 'neon']

word_hash = {}

words.each do |word|
  sorted_word = word.split("").sort.join

  if word_hash.has_key? sorted_word
    word_hash[sorted_word] << word

  else
    word_hash[sorted_word] = [word]
  end
end

word_hash.each_value do |val|
  p val 
  p "--------"
end