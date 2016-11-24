class AddColumnToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :postcode, :string
    add_column :users, :town, :string
    add_column :users, :county, :string
    add_column :users, :country, :string
  end
end
