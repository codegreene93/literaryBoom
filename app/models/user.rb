class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
         
        def user_params
        params.require(:user).permit(:email, :password, :password_confirmation, :remember_me)
        end
        
        has_many :orders
end
