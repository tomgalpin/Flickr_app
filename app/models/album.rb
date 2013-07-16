class Album < ActiveRecord::Base
  attr_accessible :name, :user_id

  has_many :photos
  belongs_to :user
  has_many :comments, :as => :commentable

end
