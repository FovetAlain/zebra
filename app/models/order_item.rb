class OrderItem < ActiveRecord::Base
  belongs_to :item
  belongs_to :cart

      validates :taille, presence: true, numericality: { only_integer: true, greater_than: 0 }
end
