class Questions 

  def test_question
    @num1 = rand(1..20)
    @num2 = rand(1..20)
    print "what is #{@num1} plus #{@num2}?"

  end

  def checkAnswer (ans)
    @total = @num1 + @num2
    @ans = ans
    if (@ans == @total)
      true
    else 
      false
    end
  end


end 