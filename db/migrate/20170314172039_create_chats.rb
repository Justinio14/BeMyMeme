class CreateChats < ActiveRecord::Migration[5.0]
  def change
    create_table :chats do |t|
      t.integer :chat_initiator
      t.integer :chat_recipient
      t.timestamps
    end
    add_index :chats, [:chat_recipient_id, :chat_initiator_id], unique: true
    
  end
end
