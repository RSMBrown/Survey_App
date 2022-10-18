Rails.application.routes.draw do
  get 'home/index'
  devise_for :users

  root to: "home#index"

  resources :surveys 
  resources :questions
  resources :answers, only: :create
  resources :options 

  resources :response_surveys do 
    member do 
      get :complete_survey
      post :complete_survey
    end 
  end 

  get 'result', to: 'response_surveys#result'
  
end
