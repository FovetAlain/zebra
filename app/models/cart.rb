class Cart < ActiveRecord::Base
	has_many :order_items
	belongs_to :user
end
