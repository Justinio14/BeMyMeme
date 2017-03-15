class AddChatRefToUsers < ActiveRecord::Migration[5.0]
  def change
    add_reference :users, :chat, foreign_key: true
  end
end
