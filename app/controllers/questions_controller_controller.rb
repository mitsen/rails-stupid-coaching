class QuestionsControllerController < ApplicationController
  def ask
  end

  def answer
    @question = params[:input]
    answers = ["Great", "Get the fuck out of here", "Silly question, get dressed and go to work!"]
    if @question == "I am going to work"
      @answer = answers[0]
    elsif @question.include? "?"
      @answer = answers[2]
    else
      @answer = answers[1]
    end
  end
end

