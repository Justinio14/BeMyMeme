class RemoveMemeIdFromUsers < ActiveRecord::Migration[5.0]
  def change
    remove_column :users, :meme_id, :integer
  end
end
