class AddIndexToPerson < ActiveRecord::Migration[7.0]
  def change
    add_index :people, :name
    add_index :people, :document
  end
end
