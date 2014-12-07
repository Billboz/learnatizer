class AddConceptIdToTips < ActiveRecord::Migration
  def change
    add_reference :tips, :concept, index: true
  end
end
