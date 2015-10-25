# 2520 は 1 から 10 の数字の全ての整数で割り切れる数字であり, そのような数字の中では最小の値である.
# では, 1 から 20 までの整数全てで割り切れる数字の中で最小の正の数はいくらになるか.

MAX_NUMBER = 50

def calc
  (2..MAX_NUMBER).reduce { |result, num| result *= factory(result, num) }
end

def factory(result, next_num)
  if result % next_num != 0
    (2..next_num).find do |div|
      next_num % div == 0
    end
  else
    1
  end
end

p calc

