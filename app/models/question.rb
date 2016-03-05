class Question < ActiveRecord::Base
  belongs_to :category
  has_many :answers
  has_many :correct_answers, ->{ where(correct: true) }, class_name: Answer
  accepts_nested_attributes_for :answers
end
