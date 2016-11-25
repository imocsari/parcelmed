class AddPhotoToCourier < ActiveRecord::Migration[5.0]
  def change
    add_column :couriers, :photo, :string
  end
end
