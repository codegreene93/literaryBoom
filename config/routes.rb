Rails.application.routes.draw do
  
  get 'orderitems/index'

  get 'orderitems/show'

  get 'orderitems/new'

  get 'orderitems/edit'
  
  get '/checkout' => 'cart#createOrder'

  resources :orders do
  resources:orderitems
  end
  
  resources :items
  get 'cart/index'

 get '/home' => 'static_pages#home'
 get '/about' => 'static_pages#about'
 get '/help' => 'static_pages#help'
 
 get '/register' => 'registrations#new'
 get '/login' => 'sessions#new'
 
 
 get '/cart/clear', to: 'cart#clear'
 get '/cart', to: 'cart#index'
 get '/cart/:id', to: 'cart#add'
 get '/cart/remove/:id' => 'cart#remove'
 get '/cart/decrease/:id' => 'cart#decrease'
 
  root 'static_pages#home'

  resources :posts
  #devise_for :users, controllers: {registrations: "registrations"}
  devise_for :users do 
   resources :orders 
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
end
