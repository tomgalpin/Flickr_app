require 'spec_helper'

describe User do

  it 'saves a new user' do
    user = FactoryGirl.build(:user)
    visit signup_path
    fill_in('Username', :with => user.username)
    fill_in('Email', :with => user.email)
    fill_in('Password', :with => "Guggh")
    fill_in('user_password_confirmation', :with => "Guggh")
    click_button('Create User')

    expect(page).to have_content('Albums#index')

    saved_user = User.last
    # this is the activation token and the
    activation_url = "http://localhost:5000/users/#{saved_user.activation_token}/activate"
    visit activation_url

    expect(page).to have_content('Sessions#new')
  end

end