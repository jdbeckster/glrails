Rails.application.routes.draw do

  resources :users, only: :show, param: :username do
    member do 
      post 'follow', to: 'follows#create'
      delete 'unfollow', to: 'follows#destroy'
    end
  end 
  resources :items
  resources :problems
  resources :tweets
  ActiveAdmin.routes(self)
  devise_for :users
  as :user do
  	get 'signin', to: 'devise/sessions#new'
  	delete 'signout', to: 'devise/sessions#destroy'
  	get 'signup', to: 'devise/registrations#new'
  end
  root 'pages#home'
  get 'about', to: 'pages#about'
  get 'contact-us', to: 'pages#contact-us'
  get 'sign-up', to: 'pages#sign-up'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
