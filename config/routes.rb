Rails.application.routes.draw do
  resources :follows
  post '/follow_user' => 'follows#follow_user'
  post '/follow_topic' => 'follows#follow_topic'
  resources :topics
  resources :answers
  resources :questions
  devise_for :users
  resources :homes

  root "homes#index"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
