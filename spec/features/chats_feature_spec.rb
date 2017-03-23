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

    it 'allows user to open a chat with recipient', js:true do

      click_link('test1')
      expect(find'.panel-heading').to have_text('test1')
      # expect(Chat.count).to change_by(1)
      end

    xit 'sends a message from sender to recipient', js:true do
      click_link('test1')
      fill_in 'message', :with => 'hello hello'
      click_button('Send')
      expect(Message.count).to change_by(1)

      click_link('test2')
      expect(find'.panel-heading').to have_text('test2')
      # expect(Chat.count).to change_by(1)
      end

    xit 'sends a message from sender to recipient', js:true do
      fill_in 'message', :with => 'hello hello'
      click_button('Send')
      expect(Message.count).to change_by(1)

    end
    xit 'sends a response from recipient to sender', js:true do
    end

    xit 'can close a chat from recipient to sender', js:true do
    end

    xit 'can close a chat from sender to recipient', js:true do
    end




  end
end
