class CreatePeople < ActiveRecord::Migration[7.0]
  def change
    create_table :people, id: :uuid do |t|
      t.string :name, default: nil
      t.string :kind_document, default: nil
      t.string :document, default: nil
      t.string :email, default: nil
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
