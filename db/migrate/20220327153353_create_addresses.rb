class CreateAddresses < ActiveRecord::Migration[7.0]
  def change
    create_table :addresses, id: :uuid do |t|
      t.references :person, null: false, foreign_key: true, type: :uuid
      t.string :street, default: nil
      t.string :number, default: nil
      t.string :neighborhood, default: nil
      t.string :complement, default: nil
      t.string :city, default: nil
      t.string :state, default: nil
      t.string :postcode, default: nil

      t.timestamps
    end
  end
end
