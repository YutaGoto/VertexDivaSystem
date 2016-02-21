Rails.application.routes.draw do
  root 'welcome#index'

  namespace :backend do
    resources :songs
    resources :vocalists
  end
end
