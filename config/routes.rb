Rails.application.routes.draw do
  root 'welcome#index'

  get :new, controller: :participants, action: :new
  get :thanks, controller: :participants, action: :thanks

  get :about, controller: :welcome, action: :about

  get :user_illustration, controller: :welcome, action: :user_illustration

  get :rule, controller: :welcome, action: :rule

  resources :songs, only: [:index, :show]
  resources :informations, only: [:index, :show]

  resources :illustrations, only: [] do
    member do
      get :illustration
    end
  end

  namespace :backend do
    resources :admin
    resources :informations
    resources :songs do
      get :to_csv
    end
    resources :vocalists
    resources :composers
    resources :illustrators
    resources :illustrations do
      member do
        get :illustration
      end
    end

    get 'top', controller: :top, action: :index

    match '/sign_in', controller: :session, action: :sign_in, via: :get
    match '/sign_in', controller: :session, action: :sign_in, via: :post
    match '/sign_out', controller: :session, action: :sign_out, via: :get
    match '/sign_out', controller: :session, action: :sign_out, via: :post
  end
end
