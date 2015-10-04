class PaymentsController < ApplicationController
  def index
  	if current_cart.order_items.size == 0 || not(logged_in?) || current_cart.user_id == nil
  		redirect_to root_path
  	end

  end

  def update
	session.delete(:cart_id)  
	redirect_to root_path
  end
end
