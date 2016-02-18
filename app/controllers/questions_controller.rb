class QuestionsController < ApplicationController
  def random 
    @question = Question.all.sample
  end
  
end
