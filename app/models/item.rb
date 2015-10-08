class Item < ActiveRecord::Base
	validates :marque, presence: { message: "La marque doit être définie." }
	validates :description, presence: { message: "La description doit être définie." }
	validates :prix, presence: { message: "Le prix doit être défini." }
	validates :photos, presence: { message: "Les photos manquent." }
	validates :tailles, presence: { message: "Les tailles doivent être définies." }
	validates :category_id, presence: { message: "La catégorie doit être définie." }

	has_many :order_items
  	belongs_to :category
  	serialize :photos
  	serialize :tailles
	extend FriendlyId
 	friendly_id :description
end
