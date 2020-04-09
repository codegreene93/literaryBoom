class RegistrationsController < Devise::RegistrationsController
   
   
   private 
   
   def sign_up_params
       params.require(:user).permit(:name, :email, :password, :password_configuration)
   end
    
    def account_update_params
        params.require(:user).permit(:name, :email, :password, :password_configuration, :current_password)
    end
    
end