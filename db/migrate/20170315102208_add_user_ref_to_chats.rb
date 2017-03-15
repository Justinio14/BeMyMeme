class AddUserRefToChats < ActiveRecord::Migration[5.0]
  def change
    add_reference :chats, :chat, foreign_key: true
  end
end
