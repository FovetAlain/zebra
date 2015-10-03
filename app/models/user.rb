class User < ActiveRecord::Base
  authenticates_with_sorcery!
    validates_confirmation_of :password, message: "Les mots de passes saisis ne sont pas identiques", if: :password

end
