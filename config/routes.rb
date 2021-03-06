Rails.application.routes.draw do
  resources :categories
  devise_for :users
  get 'cart/index'

  resources :items
  root 'static_pages#home'
  

  get '/help', to: 'static_pages#help'

  get '/about', to: 'static_pages#about'
  
  get '/admin', to: 'user#admin_login'
  get '/logout', to: 'user#logout'
  
  get '/cart', to: 'cart#index'
  get '/cart/clear', to: 'cart#clearCart'
  get '/cart/:id', to: 'cart#add'
  
  get '/cart/remove/:id' => 'cart#remove'
  
  get '/category/:title', to: 'static_pages#category'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
