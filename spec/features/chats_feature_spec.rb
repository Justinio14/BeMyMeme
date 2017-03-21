require 'rails_helper'
require_relative 'web_helper'

feature 'chats' do
  context 'signed in user' do
    before(:each) do
        sign_up
        visit ('/chats')
    end

    it 'chats/index should show user list' do
      expect(page).to have_content('User list')
    end

    it 'allows user to start a chat with recipient' do
      click_link('test2')
      fill_in 'message', :with => 'hello hello'
      expect(Chat.count).to change_by(1)
      end
    end
end
