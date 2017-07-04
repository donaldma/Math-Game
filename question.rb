module MathGame
  class Question

    attr_accessor :question, :answer
#initializes each question with 2 random generated numbers and the 
#corresponding correct answer
    def initialize
      @num1 = rand(1..20)
      @num2 = rand(1..20)
      @question = "What does #{@num1} plus #{@num2} equal?"
      @answer = @num1 + @num2
    end

#defines a function correct that checks if the user inputted answer is equal to
#the correct answer
    def correct? (input)
      input.to_i === @answer
    end

  end
end