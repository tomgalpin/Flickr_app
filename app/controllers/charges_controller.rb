class ChargesController < ApplicationController
  def new
  end

  def create
    user = current_user

    customer = Stripe::Customer.create(
      :email => user.email,
      :card => params[:stripeToken],
      :plan => 'Flickr'
      )

    user.customer_id = customer.id

    if user.save
      redirect_to user_path(user.id)
    end
  end

end
