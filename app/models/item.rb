class Item < ActiveRecord::Base
	has_many :order_items
  belongs_to :category
  serialize :photos
  serialize :tailles
end
