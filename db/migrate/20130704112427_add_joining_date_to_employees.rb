class AddJoiningDateToEmployees < ActiveRecord::Migration
  def change
    add_column :employees, :joining_date, :date
  end
end
