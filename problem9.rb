# a + b + c = 1000 となるピタゴラスの三つ組が一つだけ存在する.
# これらの積 abc を計算しなさい.

CONST = 1000

def calc
  1.upto(CONST) do |a|
    (a + 1).upto(CONST) do |b|
      (b + 1).upto(CONST) do |c|
        if is_pythagorean?(a, b, c) && is_equal?(a, b, c)
          return a * b * c
        end
      end
    end
  end
end

def is_pythagorean?(a, b, c)
  a**2 + b**2 == c**2
end

def is_equal?(a, b, c)
  a + b + c == CONST
end

p calc
