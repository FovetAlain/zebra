class ItemsController < ApplicationController
	include ItemsHelper
	def show
		@categories = Category.all
		@item = Item.find(params[:id])
		@idCat = @item.category_id
		@cat = Category.find(@idCat) 
		@nameCat = @cat.name.downcase
	end
	def new
		@categories = Category.all
		@item = Item.new
	end
	def create
	  @item = Item.new(item_params)
	  @photos = params[:item][:photos]
	  @item.photos=@photos.split(", ")
	  @taille = params[:item][:tailles]
	  @item.tailles = @taille.split(",").map { |s| s.to_i }
	  @item.save
	  redirect_to item_path(@item)
	end

end
