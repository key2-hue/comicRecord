Rails.application.routes.draw do
  devise_for :users
  #  :controllers => {
  #   confirmations: 'users/confirmations',
  #   passwords:     'users/passwords',
  #   registrations: 'users/registrations',
  #   sessions:      'users/sessions',
  # } 

  # devise_scope :user do
  #   get "user/:id", :to => "users/registrations#detail"
  #   get "signup", :to => "users/registrations#new"
  #   get "login", :to => "users/sessions#new"
  #   get "logout", :to => "users/sessions#destroy"
  # end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users do
    resources :comics
  end
  
  root "comics#index"
end
