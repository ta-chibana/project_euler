# フィボナッチ数列の項は前の2つの項の和である.
# 数列の項の値が400万以下の, 偶数値の項の総和を求めよ.

MAX_VALUE = 4000000

def create_fibs(fib = [1, 2])
  sum = fib[-2] + fib[-1]
  if sum <= MAX_VALUE
    fib << sum
    create_fibs fib
  else
    fib
  end
end

def sum_even
  self.select { |num| num.even? }.reduce :+
end

public :sum_even

p create_fibs.sum_even
