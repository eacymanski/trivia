Rails.application.routes.draw do

  root 'static_pages#home'

  get 'about' =>'static_pages#about'

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
