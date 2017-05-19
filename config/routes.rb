Rails.application.routes.draw do
  root :to => 'welcome#index'

  get '/decks/show', :to => 'decks#show'
  get 'welcome/index'
  get 'welcome/show_deck'
  get 'welcome/show_details'
  get 'welcome/show_history'
  get 'welcome/show_user'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
