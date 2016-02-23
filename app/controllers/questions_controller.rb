class QuestionsController < ApplicationController
  def random 
    @question = Question.all.sample
  end
  
  def check_answer
    response = {
      correct: answer.correct,
      correct_answers: question.correct_answers.map(&:id),
    }
    render json: response
  end

  private

  def answer
    @answer ||= Answer.find(answer_id)
  end

  def question
    @question ||= Question.find(question_id)
  end

  def answer_id
    params.require(:answer_id)
  end

  def question_id
    params.require(:id)
  end
     
end
