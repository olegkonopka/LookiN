Rails.application.routes.draw do
  devise_for :users
  resources :posts

  devise_scope :user do  
  get '/users/sign_out' => 'devise/sessions#destroy'  
  end
  root 'pages#index'

  get '/home' => 'pages#home'

  get '/user/:id' => 'pages#profile'

  get '/explore' => 'pages#explore'

end
