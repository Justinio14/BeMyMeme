class CreateUsersMemes < ActiveRecord::Migration[5.0]
  def change
    create_table :users_memes do |t|
      t.references :meme, foreign_key: true
      t.references :user, foreign_key: true
    end
  end
end
