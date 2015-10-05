class CategoriesController < ApplicationController
	include CategoriesHelper

	  before_filter :admin, only: [:new, :create]

def admin
  if logged_in?
    unless current_user.username == "admin"
      redirect_to root_path
      return false
    end
  else
    redirect_to root_path
  end
end

	def index
		@categories = Category.all
		
	end
	def show

		@category = Category.find(params[:id])
		@items = Item.where.not(promotion: nil)

	end

	def new

		@category = Category.new
	end
	def create
	  @category = Category.new(category_params)
	  @category.save
	  redirect_to category_path(@category)
	end

end
