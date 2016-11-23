class CreateCouriers < ActiveRecord::Migration[5.0]
  def change
    create_table :couriers do |t|
      t.string :name
      t.text :description
      t.float :temperature
      t.float :weight
      t.integer :dimensions
      t.boolean :tomorrow
      t.boolean :same_day
      t.float :price

      t.timestamps
    end
  end
end
