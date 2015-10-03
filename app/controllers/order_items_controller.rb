class OrderItemsController < ApplicationController
	include OrderItemsHelper
  def create
 	@cart = current_cart
  	@id = params[:order_item][:item_id]
  	@item = Item.find(@id)
  	@orderItem = @cart.order_items.new(order_item_params)
  	
  	@orderItem.item_id = @item.id
  	@orderItem.unit_price = @item.prix
  	@cart.save
  	session[:cart_id] = @cart.id
    flash.notice = "#{@item.description} a été ajouté au panier !"

	redirect_to item_path(@item)
  end

  def update
  end

  def destroy
    @order = current_cart
    @order_item = @order.order_items.find(params[:id])
    @order_item.destroy
    @order_items = @order.order_items
    redirect_to cart_path
  end
end
