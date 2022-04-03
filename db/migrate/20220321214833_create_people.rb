class CreatePeople < ActiveRecord::Migration[7.0]
  def change
    create_table :people, id: :uuid do |t|
      t.string :name, default: nil
      t.string :kind_document, default: nil
      t.string :document, default: nil
      t.string :email, default: nil
      t.jsonb :data_address, default: nil

      t.timestamps
    end
  end
end
