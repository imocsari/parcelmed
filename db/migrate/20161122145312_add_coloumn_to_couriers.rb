class AddColoumnToCouriers < ActiveRecord::Migration[5.0]
  def change
    add_column :couriers, :price, :integer
<<<<<<< HEAD
    add_column :couriers, :availability, :boolean, default: false
=======
    add_column :couriers, :availability, :boolean
>>>>>>> master
  end
end
