class User < ActiveRecord::Base
  authenticates_with_sorcery!

  attr_accessible :username, :email, :password, :password_confirmation, :stripe_id

  has_many :albums
  has_many :photos, :through => :albums

  validates_confirmation_of :password
  validates_presence_of :password, :on => :create
  validates_presence_of :username
  validates_presence_of :email
  validates_uniqueness_of :email

  def customer_emails
    customer_emails = []
    Stripe::Customer.all.data.each do |customer|
      customer_emails << customer.email
    end
    customer_emails
  end

  def is_paid?
    customer_emails.include?(self.email)
  end

end