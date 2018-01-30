Rails.application.routes.draw do
  resources :tweets
  ActiveAdmin.routes(self)
  devise_for :users
  as :user do
  	get 'signin' => 'devise/sessions#new'
  	delete 'signout' => 'devise/sessions#destroy'
  	get 'signup' => 'devise/registrations#new'
  end
  root 'pages#home'
  get 'about' => 'pages#about'
  get 'contact-us' => 'pages#contact-us'
  get 'sign-up' => 'pages#sign-up'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
