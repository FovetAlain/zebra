class HomeController < ApplicationController
	def index
		@items = Item.all
		@promo = Category.where("name = 'Promotions'")
	end
end
