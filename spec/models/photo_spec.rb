require 'spec_helper'

describe Photo do

  it { should belong_to(:album) }

  # photo = FactoryGirl.create(:photo)

  it { should validate_presence_of(:name) }

end
