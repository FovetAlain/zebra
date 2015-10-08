class Category < ActiveRecord::Base
	has_many :items
	extend FriendlyId
 	friendly_id :name
 	validates :name, presence: { message: "Le nom de la catégorie doit être définie." }
end
