class Question
  attr_accessor :number1, :number2, :solution
  def initialize
    # Give random number
    @number1 = rand(1..20)
    @number2 = rand(1..20)
    @solution = @number1 + @number2
  end
end