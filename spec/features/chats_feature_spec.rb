require 'rails_helper'
require_relative 'web_helper'

feature 'chats' do
  context 'signed in user' do
    before do
        test_1_user
    end

    it 'chats/index should show user list' do
      sign_up_DD
      visit ('/chats')
      expect(page).to have_content('User list')
    end

    it 'correct number of users in chat list', js:true do
      visit ('/chats')
      expect(find('ul')).to have_selector('li', count: 2)
      end

    it 'opens a chat from sender to recipient' do
        user = User.create! :email => "add@meme.com", :password => 'topsecret', :password_confirmation => 'topsecret', :username => 'testaddmeme', :bio => 'great tester', :gender => 'not sure', :postcode => 'NG9 3GW', :location => 'Bramcote', :interested_in => 'female'
        user2 = User.create! :email => "mad@meme.com", :password => 'topsecret', :password_confirmation => 'topsecret', :username => 'madmeme', :bio => 'great dev', :gender => 'not sure', :postcode => 'N00 1FN', :location => 'Oz', :interested_in => 'male'
        Chat.create! chat_initiator: 2, chat_recipient: 3, user_id: 2
        expect(Chat.count).to eq(1)
      end


    it 'sends a message from init to recipient who then responds back' do
      user = User.create! :email => "add@meme.com", :password => 'topsecret', :password_confirmation => 'topsecret', :username => 'testaddmeme', :bio => 'great tester', :gender => 'not sure', :postcode => 'NG9 3GW', :location => 'Bramcote', :interested_in => 'female'
      user2 = User.create! :email => "mad@meme.com", :password => 'topsecret', :password_confirmation => 'topsecret', :username => 'madmeme', :bio => 'great dev', :gender => 'not sure', :postcode => 'N00 1FN', :location => 'Oz', :interested_in => 'male'
      chat = Chat.get(5,6)
      Message.create! message: "hello hello", sender_id: 6, recipient_id: 5, chat_id:2, user_id: 6
      Message.create! message: "hi hi", sender_id: 5, recipient_id: 6, chat_id:2, user_id: 5
      expect(Message.count).to eq(2)
    end

    it 'can identify the recipient of a particular chat'do
      chat = Chat.get(5,6)
      chattee = chat.opposed_user(5)
      expect(chattee).to eq(nil)
    end

    xit 'can close a chat', js:true do
    end
  end
end
