Rails.application.routes.draw do
  devise_for :users
  root to: 'memes/posts#index'
  get '/memes', to: 'memes/posts#index'
  resources :posts
  namespace :admin do
    resources :posts
  end
  get "/memes/admin", to: "memes/admin/posts#index"
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

