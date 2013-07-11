class User < ActiveRecord::Base
  authenticates_with_sorcery!

  attr_accessible :username, :email, :password, :password_confirmation

  validates_confirmation_of :password
  validates_presence_of :passowrd, :on => :create
  validates_presence_of :email
  validates_uniqueness_of :email
end