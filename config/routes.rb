Rails.application.routes.draw do
  root 'pages#home'
  get 'about' => 'pages#about'
  get 'contact-us' => 'pages#contact-us'
  get 'sign-up' => 'pages#sign-up'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
