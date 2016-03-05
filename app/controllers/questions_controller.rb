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
  
  def new
    @question = Question.new
    3.times {@question.answers.build}
  end
  
  def create
    @question=Question.new(question_params)
    if @question.save
      redirect_to new_questions_path
    else
      render :new
    end
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
  
  def question_params
    params.require(:question).permit(:question_text, :category_id, answer_attributes: [:id, :answer_text, :correct])
  end
end
