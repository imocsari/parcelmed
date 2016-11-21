class AddColumnsToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :company_name, :string
    add_column :users, :company_address, :string
    add_column :users, :company_department, :string
    add_column :users, :contact_person, :string
    add_column :users, :contact_number, :string
    add_column :users, :admin, :boolean
  end
end
