class Question < ActiveRecord::Base
  has_many :answers
  has_many :correct_answers, ->{ where(correct: true) }, class_name: Answer
end
