# 10001 番目の素数を求めよ.

def prime_number 
  primes = [2]
  check_num = 3

  while primes.length < 10001
    primes << check_num unless primes.none? { |prime| check_num % prime == 0 }
    check_num += 1
  end
  primes
end

p prime_number.last
