# 10001 番目の素数を求めよ.

def prime_number numbers = [2], check_num = 3
  numbers.each do |prime|
    next if check_num % prime == 0
  end

  numbers << check_num
  check_num += 1
  if numbers.length < 10001
    prime_number numbers, check_num
  else
    numbers
  end
end

p prime_number.last
