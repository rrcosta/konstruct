class AddIndexToPerson < ActiveRecord::Migration[7.0]
  def change
    add_column :people, :name, :string
    add_index :people, :name
    add_column :people, :document, :string
    add_index :people, :document
  end
end
