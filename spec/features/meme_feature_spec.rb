require 'rails_helper'

feature 'index will show meme gallery' do
  context 'index will return memes on the page' do
    it 'should have link' do
    API.refresh
    visit '/memes'
    expect(page).to have_content('i.imgur.com')
    end
  end
end