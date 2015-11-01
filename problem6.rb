# 最初の100個の自然数について二乗の和と和の二乗の差を求めよ.

def calc &block
  (1..100).reduce do |result, num|
    result += block.call(num)
  end
end

p (calc { |arg| arg } ** 2) - (calc { |arg| arg ** 2 })
