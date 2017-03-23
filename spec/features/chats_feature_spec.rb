require 'rails_helper'
require_relative 'web_helper'

feature 'chats' do
  context 'signed in user' do
    before(:each) do
        sign_up
        test_1_user
        visit ('/chats')
    end

    it 'chats/index should show user list' do
      expect(page).to have_content('User list')
    end

    xit 'allows user to open a chat with recipient', js:true do
      click_link('test1')
      expect(find'.panel-heading').to have_text('test1')
      end

    xit 'sends a message from sender to recipient', js:true do
      fill_in 'message', :with => 'hello hello'
      expect(find'.panel-body').to have_text
      click_button('Send')
      expect(find'.row').to have_text('hello hello')
    end

    xit 'sends a response from recipient to sender', js:true do
    end

    xit 'can close a chat from recipient to sender', js:true do
    end

    xit 'can close a chat from sender to recipient', js:true do
    end




  end
end
