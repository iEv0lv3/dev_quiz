Rails.application.routes.draw do
  root 'questions#index'

  devise_for :users

  resources :users do
    resources :answers
  end

  resources :questions
end
