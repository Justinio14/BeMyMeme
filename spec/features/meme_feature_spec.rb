require 'rails_helper'

feature 'index will show meme gallery' do
  context 'index will return memes on the page' do
    it 'should have link' do
    API.refresh
    visit '/memes'
    expect(page).to have_content('i.imgur.com')
    end
  end
  # 
  # context 'adding a meme' do
  #   it 'should allow the user to add a meme from the gallery' do
  #     API.refresh
  #
  #   end
  # end

end
