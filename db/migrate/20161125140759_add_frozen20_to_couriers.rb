class AddFrozen20ToCouriers < ActiveRecord::Migration[5.0]
  def change
    add_column :couriers, :frozen_20_compliant, :boolean, null: false, default: false
    add_column :couriers, :fozen_20_price, :float
  end
end
