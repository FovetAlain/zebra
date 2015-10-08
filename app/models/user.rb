class User < ActiveRecord::Base
  authenticates_with_sorcery!
  validates_confirmation_of :password, message: "Les mots de passes saisis ne sont pas identiques", if: :password
  validates :username, presence: { message: "Le nom d'utilisateur doit être défini." }
  validates :nom, presence: { message: "Le nom de famille doit être défini." }
  validates :prenom, presence: { message: "Le prénom doit être défini." }
  validates :email, presence: { message: "L'adresse email doit être définie." }
  validates :rue, presence: { message: "Le numéro et nom de rue doivent être défini." }
  validates :cp, presence: { message: "Le code postal doit être défini." }
  validates :ville, presence: { message: "La ville doit être définie." }
  validates :password, presence: { message: "Le mot de passe doit être défini." }
    has_many :carts
    extend FriendlyId
 	friendly_id :username
end
