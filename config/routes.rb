Rails.application.routes.draw do
  get "/" => 'home#index'

  resources :users

  resources :questions do
    resources :answers
  end

  get '/login', to: 'sessions#new'
  get '/logout', to: 'sessions#destroy'
  post '/sessions', to: 'sessions#create'

  # get '/questions', to: 'questions#index'
  # get '/questions/:id', to: 'questions#show'
  get '/votes', to: 'votes#new'
  post '/votes', to: 'votes#create'
end
