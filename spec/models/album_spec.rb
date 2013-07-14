require 'spec_helper'

describe Album do

  before do
    FactoryGirl.create(:album)
  end

  it { should have_many(:photos) }
  it { should belong_to(:user) }

  # album = FactoryGirl.create(:album)

  it { should validate_presence_of(:name) }

end
