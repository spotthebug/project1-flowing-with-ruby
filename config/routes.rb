Rails.application.routes.draw do
  resources :users

  # Prefix Verb   URI Pattern               Controller#Action
#   users GET    /users(.:format)          users#index
#         POST   /users(.:format)          users#create
# new_user GET    /users/new(.:format)      users#new
# edit_user GET    /users/:id/edit(.:format) users#edit
#    user GET    /users/:id(.:format)      users#show
#         PATCH  /users/:id(.:format)      users#update
#         PUT    /users/:id(.:format)      users#update
#         DELETE /users/:id(.:format)      users#destroy

resources :questions

# questions GET    /questions(.:format)          questions#index
#           POST   /questions(.:format)          questions#create
# new_question GET    /questions/new(.:format)      questions#new
# edit_question GET    /questions/:id/edit(.:format) questions#edit
#  question GET    /questions/:id(.:format)      questions#show
#           PATCH  /questions/:id(.:format)      questions#update
#           PUT    /questions/:id(.:format)      questions#update
#           DELETE /questions/:id(.:format)      questions#destroy

end
