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
  
end
