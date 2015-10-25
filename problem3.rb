class Problem3
  def initialize(num)
    @num = num
    @prime_numbers = []
  end

  attr_accessor :num, :prime_numbers

  def execute(div_num = 2)
    if @num <= div_num
      if @num == div_num
        add_prime_number(div_num)
      end
      return
    elsif @num % div_num == 0
      @num /= div_num
      add_prime_number(div_num)    
    else
      div_num += 1
    end
    execute(div_num)
  end

  def add_prime_number(number)
    if @prime_numbers.last != number && 
      @prime_numbers << number
    end
  end

  def result
    @prime_numbers.last
  end
end

calc = Problem3.new(600851475143)
calc.execute
p calc.prime_numbers
p calc.result

