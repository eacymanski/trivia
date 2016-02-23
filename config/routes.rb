Rails.application.routes.draw do
  resource :users
  devise_for :users
  resource :questions
  get "questions/random", to: "questions#random"
  get "questions/check_answer", to:"question#check_answer"

end
