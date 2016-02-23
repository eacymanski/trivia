class QuestionsController < ApplicationController
  def random 
    @question = Question.all.sample
  end
  
  def check_answer
    answer =Answer.find(params(:answer_id))
    render json: { correct: answer.correct}
  end
     
end
