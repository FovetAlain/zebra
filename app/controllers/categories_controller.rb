class CategoriesController < ApplicationController
	include CategoriesHelper
	def index
		@categories = Category.all
	end
	def show
		@categories = Category.all
		@category = Category.find(params[:id])
	end
	def new
		@categories = Category.all
		@category = Category.new
	end
	def create
	  @category = Category.new(category_params)
	  @category.save
	  redirect_to category_path(@category)
	end

end
