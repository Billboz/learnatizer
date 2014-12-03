class CreateTips < ActiveRecord::Migration
  def change
    create_table :tips do |t|
      t.string :problem
      t.string :error
      t.string :solution

      t.timestamps
    end
  end
end
