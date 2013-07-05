class AddBirthdayToEmployees < ActiveRecord::Migration
  def change
    add_column :employees, :birthday, :date
  end
end
