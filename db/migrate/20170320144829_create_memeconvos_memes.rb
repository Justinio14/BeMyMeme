class CreateMemeconvosMemes < ActiveRecord::Migration[5.0]
  def change
    create_table :meme_convos_memes do |t|
      t.references :meme_convo, foreign_key: true
      t.references :meme, foreign_key: true
    end
  end
end
