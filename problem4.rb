# 3桁の数の積で表される回文数の最大値を求めよ.

def is_palindrome?
  self == self.to_s.reverse.to_i
end

def create_range(digits)
  ('1' + '0' * (digits - 1)).to_i...('1' + '0' * (digits)).to_i
end

public :is_palindrome?

max_pal = 0
range = create_range 3
range.each do |x|
  range.each do |y|
    product = x * y
    max_pal = product if product.is_palindrome? && max_pal < product
  end
end

p max_pal
