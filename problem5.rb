# 2520 は 1 から 10 の数字の全ての整数で割り切れる数字であり, そのような数字の中では最小の値である.
# では, 1 から 20 までの整数全てで割り切れる数字の中で最小の正の数はいくらになるか.

MAX_VALUE = 20

def calc
  (2..MAX_VALUE).reduce { |result, num| result *= decesion(result, num) }
end

def decesion(result, next_num)
  if result % next_num != 0
    (2..next_num).find { |div| next_num % div == 0 }
  else
    1
  end
end

p calc

