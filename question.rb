#Asks question
class Question
    attr_reader :sum
  def initialize
    @sum = nil
  end

  def new_turn
    num1 = rand(0..20)
    num2 = rand(0..20)
    get_sum(num1, num2)
    puts "--------- NEW TURN ----------"
    puts "What does #{num1} plus #{num2} equal?"

  end

  def get_sum(num1, num2)
    @sum = num1 + num2
  end
end
