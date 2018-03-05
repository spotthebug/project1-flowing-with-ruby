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
  root 'home#index'

  post '/questions/:question_id/upvote', to: 'votes#upvote'
  post '/questions/:question_id/downvote', to: 'votes#downvote'
end
