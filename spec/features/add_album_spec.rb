# integration tests:

# 1. the user should be able to add an album
# 2.  after adding the album, the user should be able to see the contents of this album
# 3. in the contents, the user should be able to add a photo through a link and a form
# 4. the user should be able to view all the photos inside an album (point 2. above)

require 'spec_helper'

describe 'adding albums' do

  it 'should be able to make an album' do
    visit root_path
    click_link 'Add an Album'
    fill_in 'Name', :with => 'Jane'
    click_button 'Add Album'

    expect(page).to have_text('Jane')
  end

  it 'should all photos in an album' do
    visit album_path
    expect(page).to have_css("href='/albums/1/photos.1'")
  end
end
