module OrderItemsHelper
	def order_item_params
		params.require(:order_item).permit(:taille)
	end
end
