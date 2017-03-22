require 'rails_helper'

feature 'index will show meme gallery' do
  context 'index will return memes on the page' do
    it 'should have link' do
    API.refresh
    visit '/memes'
    expect(page).to have_content('i.imgur.com')
    end
  end

feature 'Memes updates'
  context 'user signed in'  do
    before do
    sign_up_DD
    test_1_user
    end

    it "Can view memes gallery" do
      click_link('My Profile')
      click_link('Add Memes')
      expect(page).to have_content('Meme Gallery')
    end

    it "Can add memes to my profile" do
      click_link('My Profile')
      click_link('Add Memes')
      click_button('Save', match: :first)
      expect(page).to have_content('Meme was saved.')
      @user = User.find_by(username: 'Dirty Den')
      expect(@user.memes.count).to eq 1
      expect(page).to have_content('Meme was saved.')
      expect(current_path).to eq "/users/#{User.first.id}"
    end
  end

end
