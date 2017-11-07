class Question
  attr_accessor :answer, :print
  def initialize()
    @num1 = rand(1..20)
    @num2 = rand(1..20)
    @print =  "What does #{@num1} + #{@num2} equal?"
    @answer = @num1 + @num2
  end
end
