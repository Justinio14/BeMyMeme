class RemoveMemeIdFromMemes < ActiveRecord::Migration[5.0]
  def change
    remove_column :memes, :meme_id, :integer
  end
end
