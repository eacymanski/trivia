Rails.application.routes.draw do
  devise_for :users
  resource :questions
  get "questions/random", to: "questions#random"
end
