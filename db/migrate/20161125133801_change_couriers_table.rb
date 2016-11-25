class ChangeCouriersTable < ActiveRecord::Migration[5.0]
  def change
    remove_column :couriers, :temperature, :float
    remove_column :couriers, :weight, :float
    remove_column :couriers, :dimensions, :integer
    remove_column :couriers, :price, :float
    add_column :couriers, :vapor_compliant, :boolean, null: false, default: false
    add_column :couriers, :ultra_low_compliant, :boolean, null: false, default: false
    add_column :couriers, :frozen_40_compliant, :boolean, null: false, default: false
    add_column :couriers, :frozen_30_compliant, :boolean, null: false, default: false
    add_column :couriers, :refrigerated_compliant, :boolean, null: false, default: false
    add_column :couriers, :controlled_ambiant_compliant, :boolean, null: false, default: false
    add_column :couriers, :uncontrolled_ambiant_compliant, :boolean, null: false, default: false
    add_column :couriers, :vapor_price, :float
    add_column :couriers, :ultra_low_price, :float
    add_column :couriers, :frozen_40_price, :float
    add_column :couriers, :frozen_30_price, :float
    add_column :couriers, :refrigerated_price, :float
    add_column :couriers, :controlled_ambiant_price, :float
    add_column :couriers, :uncontrolled_ambiant_price, :float
  end
end
