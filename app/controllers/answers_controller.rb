class AnswersQuestion < ApplicationController
  def new
    @answer = Answer.new
  end
  
  def create 
    @answer = Answer.new(answer_params)
    @answer.save
  end
  
  private
  
  def answer_params
    params.require(:answer).permit(:answer_text, :correct, :question_id)
  end
end