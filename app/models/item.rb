class Item < ActiveRecord::Base
  mount_uploader :image, ItemUploader
  has_and_belongs_to_many :users
end
