module ItemsHelper
	def item_params
		params.require(:item).permit(:marque, :description, :promotion, :prix, :prix_after, :category_id)
	end

end
