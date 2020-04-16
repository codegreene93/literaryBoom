Rails.application.routes.draw do
 
 root 'static_pages#home'
  
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
 get '/cart/remove/:id', to: 'cart#remove'
 get '/cart/decrease/:id', to: 'cart#decrease'
 get '/cart/increase/:id', to: 'cart#increase'
 
 get '/paid/:id' => 'static_pages#thankyou'
 get '/payments' => 'orders#pay'
 get '/shipped/:id' => 'orders#shipped'
 
 get '/thankyou/:id' => 'static_pages#thankyou'
 
 post '/search' => 'items#search'
 
 resources :categories
 get 'category/:title', to: 'static_pages#category'
 


  resources :home
  
  #devise_for :users, controllers: {registrations: "registrations"}
  devise_for :users do 
   resources :orders 
  end


  
  get 'admin/admin'

  get '/createuser' => 'sign_in#createuser'
  
  get '/signIn' => 'sign_in#signin'
  
  get '/adminsignin' => 'sign_in#adminsignin'

  #get 'sign_in/AdminSignIn'
  
  #get 'sign_in/SignIn'
  
  #get 'sign_in/CreateUser'

  root 'home#index'
  
 

  resources :home
  devise_for controllers: {registrations: "registrations"}
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
end
