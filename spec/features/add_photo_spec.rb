require 'spec_helper'

describe 'adding photos' do

  it 'should add a photo to an album' do
    visit 'new_album_photos_path'
    fill_in 'Name', :with => 'Swimming'

    attach_file 'picture[url]', File.join(Rails.root, 'public', 'Test.jpg')
    click_button 'Add New Photo'
    expect(page).to have_selector('img')
    expect(page).to have_css('img[src8="Test.jp"]')
  end
end


