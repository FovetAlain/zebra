class HomeController < ApplicationController
	def index
		@categories = Item.all
	end
end
