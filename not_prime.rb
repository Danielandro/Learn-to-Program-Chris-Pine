def not_primes(a,b)
  sqrt_of_primes_less_than_20000 = [2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41, 43, 47, 53, 59, 61, 67, 71, 73, 79, 83, 89, 97, 101, 103, 107, 109, 113, 127, 131, 137, 139, 149]

  num_range = (a...b).entries
  answer = []

  num_range.each do |num|
    sqrt_of_primes_less_than_20000.each do |prime|
      if num == prime next
    end

  end
end

not_primes(999, 2500)