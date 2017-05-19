Rails.application.routes.draw do
  get 'welcome/index'
  get 'welcome/show_deck'
  get 'welcome/show_details'
  get 'welcome/show_history'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
