class OrderItem < ActiveRecord::Base
  belongs_to :item
  belongs_to :cart

  validates :taille, presence: true
end
