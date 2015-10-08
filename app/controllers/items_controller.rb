class ItemsController < ApplicationController
	include ItemsHelper
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

	def show
		@orderItem = OrderItem.new
	
		@item = Item.friendly.find(params[:id])
		@idCat = @item.category_id
		@cat = Category.find(@idCat) 
		@nameCat = @cat.name.downcase
	end
	def new
	
		@item = Item.new
	end
	def create
	  @item = Item.new(item_params)
	  @photos = params[:item][:photos]
	  @item.photos=@photos.split(", ")
	  @taille = params[:item][:tailles]
	  @item.tailles = @taille.split(",").map { |s| s.to_i }

    	respond_to do |format|
      if @item.save
        format.html { redirect_to item_path(@item), notice: 'Article créé avec succès.' }
        format.json { render :show, status: :created, location: @item }
      else
        format.html { render :new }
        format.json { render json: @item.errors, status: :unprocessable_entity }
      end
    end
	  
	end

end	
