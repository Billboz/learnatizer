class CreateConcepts < ActiveRecord::Migration
  def change
    create_table :concepts do |t|
      t.string :concept

      t.timestamps
    end
  end
end
