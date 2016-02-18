Rails.application.routes.draw do
  root 'welcome#index'

  resources :songs
  resources :vocalists
end
