class CreateMemes < ActiveRecord::Migration[5.0]
  def change
    create_table :memes do |t|
      t.string :tag
      t.string :name

      t.timestamps
    end
  end
end
