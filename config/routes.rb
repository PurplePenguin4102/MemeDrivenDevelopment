Rails.application.routes.draw do
  #devise_for :users
  devise_for :users, skip: [:sessions, :registrations]
  as :user do
    get '/signin', to: 'devise/sessions#new', as: :new_user_session
    post '/signin', to: 'devise/sessions#create', as: :user_session
    delete '/signout', to: 'devise/sessions#destroy', as: :destroy_user_session
    get '/signup', to: 'devise/registrations#new', as: :new_user_registration
    post '/signup', to: 'devise/registrations#create', as: :user_registration
  end
  root to: 'posts#index'
  resources :posts
  namespace :admin do
    resources :posts
  end
  get "/admin", to: ::Rails.application.config.hard_coded_subir + "/admin/posts#index"
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

