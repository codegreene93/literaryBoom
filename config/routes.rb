Rails.application.routes.draw do

  
  get 'admin/admin'

  get '/createuser' => 'sign_in#createuser'
  
  get '/signIn' => 'sign_in#signin'
  
  get '/adminsignin' => 'sign_in#adminsignin'

  #get 'sign_in/AdminSignIn'
  
  #get 'sign_in/SignIn'
  
  #get 'sign_in/CreateUser'

  root 'home#index'
  
 

  resources :post
  devise_for :users, controllers: {registrations: "registrations"}
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
end
