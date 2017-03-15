class AddUserRefToMemes < ActiveRecord::Migration[5.0]
  def change
    add_reference :memes, :user, foreign_key: true
  end
end
