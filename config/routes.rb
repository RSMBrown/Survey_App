Rails.application.routes.draw do
  get 'home/index'
  devise_for :users

  root to: "home#index"

  resources :surveys 
  resources :questions
  resources :answers, only: :create
  resources :options 

  resources :response_surveys do 
    get :complete_survey, on: :member
  end 

  get 'result', to: 'response_surveys#result'
  
end
