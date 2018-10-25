speech = ''
bye_count = 0

while bye_count < 3
    speech = gets.chomp
    if speech == 'BYE'
        bye_count += 1
    else
        bye_count = 0
    end

    if speech.upcase == speech
        puts ('no, not since ' + rand(1900..1993).to_s + '!').upcase
    else
        puts ('huh?!  speak up, sonny!').upcase    
    end
    
end

