class AddMemeRefToUsers < ActiveRecord::Migration[5.0]
  def change
    add_reference :users, :meme, foreign_key: true
  end
end
