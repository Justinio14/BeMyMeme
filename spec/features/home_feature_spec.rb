require 'rails_helper'

feature 'HomePage' do
  context 'index should show the home page' do
    it 'should return text on the homepage' do
      visit '/'
      expect(page).to have_content("BeMyMeme")
    end
  end
end
