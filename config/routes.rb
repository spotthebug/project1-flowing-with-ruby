Rails.application.routes.draw do
  # resources :users do
  #   resources :questions, except: [:index, :show] do
  #     resources :answers, except: [:show]
  #   end
  # end

  resources :users

  resources :questions do
    resources :answers
  end

  get '/login', to: 'sessions#new'
  get '/logout', to: 'sessions#destroy'
  post '/sessions', to: 'sessions#create'

  # get '/questions', to: 'questions#index'
  # get '/questions/:id', to: 'questions#show'

end
