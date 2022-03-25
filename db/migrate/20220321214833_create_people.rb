class CreatePeople < ActiveRecord::Migration[7.0]
  def change
    create_table :people, id: :uuid do |t|
      t.string :name
      t.string :kind_document
      t.string :document
      t.string :email

      t.timestamps
    end
  end
end
