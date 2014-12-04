class AddIndexToVotes < ActiveRecord::Migration
  def change
    add_column :votes, :tip_id, :string
    add_index :votes, :tip_id
  end
end
