class CreateCouriers < ActiveRecord::Migration[5.0]
  def change
    create_table :couriers do |t|
      t.references :booking, foreign_key: true
      t.string :name
      t.text :description

      t.timestamps
    end
  end
end
