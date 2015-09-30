class ItemsController < ApplicationController
	def show
		@categories = Category.all
		@item = Item.find(params[:id])
	end
end
