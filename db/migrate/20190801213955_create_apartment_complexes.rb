class CreateApartmentComplexes < ActiveRecord::Migration[5.2]
  def change
    create_table :apartment_complexes do |t|
      t.string :street
      t.string :city
      t.string :zip
      t.string :state
      t.string :managers_name
      t.string :managers_phone
      t.string :hours

      t.timestamps
    end
  end
end
