class RemoveUserIdFromMemes < ActiveRecord::Migration[5.0]
  def change
    remove_column :memes, :user_id, :integer
  end
end
