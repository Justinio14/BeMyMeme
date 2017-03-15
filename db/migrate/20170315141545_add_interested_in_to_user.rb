class AddInterestedInToUser < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :interested_in, :string
  end
end
