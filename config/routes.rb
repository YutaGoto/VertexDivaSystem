Rails.application.routes.draw do
  root 'welcome#index'

  get :thanks, controller: :welcome, action: :thanks
  resources :songs, only: [:index, :show]

  namespace :backend do
    resources :songs
    resources :vocalists
    resources :composers
  end
end
