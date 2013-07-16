class Photo < ActiveRecord::Base
  attr_accessible :album_id, :name, :url

  belongs_to :album
  has_many :comments, :as => :commentable

  mount_uploader :url, ImageUploader
end
