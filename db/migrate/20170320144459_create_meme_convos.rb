class CreateMemeConvos < ActiveRecord::Migration[5.0]
  def change
    create_table :meme_convos do |t|
      t.integer :chat_initiator
      t.integer :chat_recipient

      t.timestamps
    end
  end
end
