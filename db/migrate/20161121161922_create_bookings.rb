class CreateBookings < ActiveRecord::Migration[5.0]
  def change
    create_table :bookings do |t|
      t.references :user, foreign_key: true
      t.integer :status
      t.datetime :pick_up_date_time
      t.datetime :destination_date_time
      t.float :temperature
      t.float :weight
      t.integer :dimensions
      t.string :material_type
      t.boolean :additional_packaging_required
      t.integer :quantity
      t.string :pick_up_address
      t.string :destination_address
      t.string :special_requirements
      t.boolean :hazardous_material
      t.boolean :terms_and_conditions

      t.timestamps
    end
  end
end
