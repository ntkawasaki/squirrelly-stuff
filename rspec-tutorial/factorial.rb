
class Factorial
  def factorial_of(num)
    (1..num).inject(:*)
  end
end

# calculator = Factorial.new
# calculator.factorial_of(5)
