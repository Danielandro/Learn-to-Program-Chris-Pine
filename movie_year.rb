movie_database =  {
  :"Jaws" => 1975,
  :"Shrek 2" => 2004,
  :"Frozen" => 2013,
  :"Harry Potter and the Sorcerer's Stone" => 2001,
  :"Raiders of the Lost Ark" => 1981
}

movie_years = []

movie_database.each do |movie, year| 
  movie_years << year
  puts year 
end

puts "Movie Years : #{movie_years}"