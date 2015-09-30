module ItemsHelper
	def item_params
		params.require(:item).permit(:marque, :description, :prix, :category_id)
	end

end
