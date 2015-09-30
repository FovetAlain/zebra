class Item < ActiveRecord::Base
  belongs_to :category
  serialize :photos
  serialize :tailles
end
