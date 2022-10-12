Rails.application.routes.draw do
  get 'home/index'
  devise_for :users

  root to: "home#index"

  resources :surveys 
  resources :questions
  resources :answers 
  resources :response_surveys
  get 'result', to: 'response_surveys#result'
  get 'show', to: "response_surveys#show"
end
