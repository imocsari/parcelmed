class CreateBookings < ActiveRecord::Migration[5.0]
  def change
    create_table :bookings do |t|
      t.references :user, foreign_key: true
      t.references :courier, foreign_key: true
      t.integer :status
      t.float :unit_price
      t.integer :quantity
      t.boolean :extra_packaging
      t.string :pick_up_contact_address
      t.string :destination_contact_address
      t.string :pick_up_contact_name
      t.string :destination_contact_name
      t.string :pick_up_contact_email
      t.string :destination_contact_email
      t.string :pick_up_contact_phone
      t.string :destination_contact_phone
      t.string :special_requirements
      t.boolean :hazardous_material

      t.timestamps
    end
  end
end
