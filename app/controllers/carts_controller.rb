class CartsController < ApplicationController
  def show
    @order_items = current_cart.order_items
    @shipping = 5.90
    
    @total = @order_items.collect { |oi| oi.valid? ? (oi.unit_price) : 0 }.sum + @shipping
  end

  def update
  		if current_cart.order_items.size != 0

  		if logged_in?
	  		@cart = current_cart
	  		@cart.shipping = 5.9
	  		@cart.total = current_cart.order_items.collect { |oi| oi.valid? ? (oi.unit_price) : 0 }.sum + 5.9
	  		@cart.user_id = current_user.id
	  		@cart.save
	  		redirect_to payment_path
	  		return false
	  else
	  	redirect_to new_user_session_path
	  	return false
	  end
	end
  

  	redirect_to cart_path
  end

end