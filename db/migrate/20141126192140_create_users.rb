class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :password
      t.string :role
      t.string :email
      t.string :blog
      t.string :twitter
      t.string :facebook
      t.string :linkedin
      t.integer :points

      t.timestamps
    end
  end
end
