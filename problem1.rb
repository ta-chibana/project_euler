# 1000 未満の 3 か 5 の倍数になっている数字の合計を求めよ.

def multiple_of_three_or_five range
  total = 0
  range.each{|num| total += num if num % 3 == 0 or num % 5 == 0 }
  total
end
p multiple_of_three_or_five(1...1000)
