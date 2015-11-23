# 201万以下の全ての素数の和を求めよ.

MAX_VALUE = 2000000
# 回りすぎて返ってこない…

# def prime_nums
#   primes = [2]
#   check_num = 3
#   (check_num..MAX_VALUE).each do
#     primes << check_num if primes.none? { |prime| check_num % prime == 0 }
#     check_num += 1
#   end
# 
#   primes
# end

# p prime_nums.reduce :+

def sieve_of_eratosthenes
  array = (2..self).to_a
  index = 0
  limit = Math.sqrt(array.max)
  execute array, index, limit
end

def execute(result, index, limit)
  while result[index] <= limit
    tmp = result.shift(index + 1)
    result.delete_if { |num| num % tmp.last == 0 }
    result = tmp + result
    limit = Math.sqrt(result.max)
    index += 1
  end

  result
end

public :sieve_of_eratosthenes

p MAX_VALUE.sieve_of_eratosthenes.reduce :+

# ライブラリ使用
# require 'prime'
#
# arr = []
# Prime.each MAX_VALUE do |n|
#   arr << n
# end
# p arr.reduce :+
