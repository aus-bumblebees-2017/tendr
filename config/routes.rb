Rails.application.routes.draw do

  get '/decks/show', :to => 'decks#show'
  put '/decks/:id/update', :to => 'decks#update'
  get '/welcome/index', :to => 'welcome#index'
  get '/places/:id', :to => 'places#show'

  get '/api' => 'api#index'

  get '/welcome/show_deck', :to => 'welcome#show_deck'
  get '/welcome/show_details', :to => 'welcome#show_details'
  get '/welcome/show_history', :to => 'welcome#show_history'
  get '/welcome/show_user', :to => 'welcome#show_user'

  post '/decks/new', :to => 'decks#create'


  
  get '/users/show/:id' => 'users#show', as: 'profile'
  get '/places/show/:id' => 'places#show', as: 'show_place'
  get '/foods/index' => 'foods#index', as: 'foods'
  get '/histories/index' => 'histories#index', as: 'histories'
  
  devise_for :users

  devise_scope :user do
    get 'users/edit', :to => 'devise/registrations#edit'
  end

  root  to: 'welcome#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end




#DEVISE PATHS
#         new_user_session GET    /users/sign_in(.:format)       devise/sessions#new
#             user_session POST   /users/sign_in(.:format)       devise/sessions#create
#     destroy_user_session DELETE /users/sign_out(.:format)      devise/sessions#destroy
#        new_user_password GET    /users/password/new(.:format)  devise/passwords#new
#       edit_user_password GET    /users/password/edit(.:format) devise/passwords#edit
#            user_password PATCH  /users/password(.:format)      devise/passwords#update
#                          PUT    /users/password(.:format)      devise/passwords#update
#                          POST   /users/password(.:format)      devise/passwords#create
# cancel_user_registration GET    /users/cancel(.:format)        devise/registrations#cancel
#    new_user_registration GET    /users/sign_up(.:format)       devise/registrations#new
#   edit_user_registration GET    /users/edit(.:format)          devise/registrations#edit
#        user_registration PATCH  /users(.:format)               devise/registrations#update
#                          PUT    /users(.:format)               devise/registrations#update
#                          DELETE /users(.:format)               devise/registrations#destroy
#                          POST   /users(.:format)               devise/registrations#create
