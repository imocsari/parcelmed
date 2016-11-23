class AddColoumnToCouriers < ActiveRecord::Migration[5.0]
  def change
    add_column :couriers, :price, :integer
    add_column :couriers, :availability, :boolean, default: false
  end
end
