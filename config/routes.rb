Rails.application.routes.draw do
  #devise_for :users
  devise_for :users, skip: [:sessions, :registrations]
  as :user do
    get 'memes/signin', to: 'devise/sessions#new', as: :new_user_session
    post 'memes/signin', to: 'devise/sessions#create', as: :user_session
    delete 'memes/signout', to: 'devise/sessions#destroy', as: :destroy_user_session
    get 'memes/signup', to: 'devise/registrations#new', as: :new_user_registration
    post 'memes/signup', to: 'devise/registrations#new', as: :user_registration
  end
  root to: 'posts#index'
  resources :posts
  namespace :admin do
    resources :posts
  end
  get "/admin", to: "admin/posts#index"
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

