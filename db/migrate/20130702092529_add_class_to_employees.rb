class AddClassToEmployees < ActiveRecord::Migration
  def change
    add_column :employees, :empclass, :integer
    add_column :employees, :IsActive, :boolean
    add_column :employees, :IsDelete, :boolean
  end
end
