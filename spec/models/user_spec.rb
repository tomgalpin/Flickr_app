require 'spec_helper'

describe User do

  it { should have_many(:albums) }
  it { should have_many(:photos).through(:albums) }

  # user = FactoryGirl.create(:user)

  it { should validate_presence_of(:username) }
  it { should validate_presence_of(:email) }
  it { should validate_uniqueness_of(:email) }
  it { should_not allow_value("ugh").for(:email) }

end
