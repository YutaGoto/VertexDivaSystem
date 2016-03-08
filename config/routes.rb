Rails.application.routes.draw do
  root 'welcome#index'

  get :thanks, controller: :welcome, action: :thanks
  resources :songs, only: [:index, :show]

  namespace :backend do
    resources :admin
    resources :songs
    resources :vocalists
    resources :composers

    get 'top', controller: :top, action: :index

    match '/sign_in', controller: :session, action: :sign_in, via: :get
    match '/sign_in', controller: :session, action: :sign_in, via: :post
    match '/sign_out', controller: :session, action: :sign_out, via: :get
    match '/sign_out', controller: :session, action: :sign_out, via: :post
  end
end
