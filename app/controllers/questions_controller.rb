class QuestionsController < ApplicationController

  @coach_answer = ''

  def ask
  end

  def answer
    @answer = params[:question]
    case @answer
    when "I am going to work"
      @coach_answer = "Great!"
    when @answer[-1] == '?'
      @coach_answer = "Silly question, get dressed and go to work!"
    else
      @coach_answer = "I don't care, get dressed and go to work!"
    end
  end

end
