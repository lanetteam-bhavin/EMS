class AddEducationToEmployees < ActiveRecord::Migration
  def change
    add_column :employees, :education, :string, limit: 50
  end
end
