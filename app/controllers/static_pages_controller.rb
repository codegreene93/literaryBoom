class StaticPagesController < ApplicationController
  def home
  end

  def about
  end

  def help
  end

  def login
  end

  def register
  end
  
  def profile
  end
  
  def createOrder
  @orders = Order.all
  end
  
  def paid
  # redirect_to "/cart/clear"
  flash[:notice] = 'Transaction Complete'
  @order = Order.last
  @order.update_attribute(:status , "Paid by User: #{current_user.email}")
  #"Paid by User:#{current_user.id} #{current_user.name} #{current_user.surname}")
  end
  
  def paid
  # redirect_to "/cart/clear"
  @order = Order.find_by(id: params[:id])
  @order.update_attribute(:status , "Paid by User: #{current_user.email}")
  #"Paid by User:#{current_user.id} #{current_user.name} #{current_user.surname}")
  end
  
end
