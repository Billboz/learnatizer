class AddUserIndexToVotes < ActiveRecord::Migration
  def change
    add_column :votes, :user_id, :string
    add_index :votes, :user_id
  end
end
