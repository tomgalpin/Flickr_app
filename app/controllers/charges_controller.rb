class ChargesController < ApplicationController
  def new
  end

  def create
    user = current_user

    customer = Stripe::Customer.create(
      :email => user.email,
      :card => params[:stripeToken]
      )

    user.customer_id = customer.id
    user.save

    rescue Stripe::CardError => e
      flash[:error] = e.message
      redirect_to charges_path

  end
end
