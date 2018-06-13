Rails.application.routes.draw do
  devise_for :users
  root to: 'posts#index'
  get '/memes', to: 'posts#index'
  resources :posts
  namespace :admin do
    resources :posts
  end
  get "/admin", to: "admin/posts#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

