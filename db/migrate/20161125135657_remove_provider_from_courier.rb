class RemoveProviderFromCourier < ActiveRecord::Migration[5.0]
  def change
    remove_column :couriers, :provider_id, :integer
  end
end
