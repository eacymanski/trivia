Rails.application.routes.draw do

  resource :users
  devise_for :users

  resource :questions do
    member do
      get "random"
      get "check_answer"
    end
  end

end
