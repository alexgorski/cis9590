Rails.application.routes.draw do
  resources :stats
  resources :players
  resources :coaches
  resources :teams
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'welcome#index'
end
