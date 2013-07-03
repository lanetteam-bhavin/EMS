class AddAddressToEmployees < ActiveRecord::Migration
  def change
    add_column :employees, :address, :string
    add_column :employees, :city, :string
    add_column :employees, :state, :string
    add_column :employees, :designation_id, :integer
  end
end
