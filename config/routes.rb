Rails.application.routes.draw do

 resource :users
  devise_for :users

  resource :questions do
    member do
      get "random"
      get "check_answer"
    end
  end
  
  get '/users/:id', :to => 'users#show', :as => :user
  get '/users/edit', :to => 'users#edit', :as => :user_edit

end
