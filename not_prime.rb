def not_primes(a,b)
  require 'prime'
  p (a..b).select{ |num| num.digits.all?(&:prime?) && !num.prime? }
end

not_primes(999, 2500)