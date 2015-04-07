class Comic < ActiveRecord::Base
  belongs_to :admin
  has_attached_file :image
end
