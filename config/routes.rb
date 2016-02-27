Rails.application.routes.draw do
  root 'welcome#index'

  get :thanks, controller: :welcome, action: :thanks

  namespace :backend do
    resources :songs
    resources :vocalists
  end
end
