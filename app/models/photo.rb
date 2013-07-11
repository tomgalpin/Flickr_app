class Photo < ActiveRecord::Base
  attr_accessible :album_id, :name, :url

  belongs_to :albums

  mount_uploader :url, ImageUploader
end
