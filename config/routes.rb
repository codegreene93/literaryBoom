Rails.application.routes.draw do
  
  resources :items
  get 'cart/index'

 get '/home' => 'static_pages#home'
 
 get '/about' => 'static_pages#about'
 
 get '/help' => 'static_pages#help'
 
 get '/login' => 'static_pages#login'
 
 get '/register' => 'static_pages#register'
 
 get '/profile' => 'static_pages#profile'
 
 get '/cart/clear', to: 'cart#clear'
 
 get '/cart', to: 'cart#index'
 
 get '/cart/:id', to: 'cart#add'
 
 get '/cart/remove/:id' => 'cart#remove'
 
 get '/cart/decrease/:id' => 'cart#decrease'
 
  root 'static_pages#home'
 
 # get 'static_pages/home'
 # get 'static_pages/about'
 # get 'static_pages/help'
 # get 'static_pages/login'
 # get 'static_pages/register'

  resources :posts
  devise_for :users, controllers: {registrations: "registrations"}
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
end
