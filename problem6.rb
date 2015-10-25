# 最初の100個の自然数について二乗の和と和の二乗の差を求めよ.
def calc &block
  result = 0
  (1..100).each do |num|
    result += block.call(num)
  end
  result
end

p (calc{|arg| arg } ** 2) - calc{|arg| arg ** 2 }
