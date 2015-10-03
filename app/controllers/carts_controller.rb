class CartsController < ApplicationController
  def show
  	@categories = Category.all
    @order_items = current_cart.order_items
  end
end