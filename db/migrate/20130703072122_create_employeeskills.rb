class CreateEmployeeskills < ActiveRecord::Migration
  def change
    create_table :employeeskills do |t|
      t.integer :employee_id
      t.integer :skill_id

      t.timestamps
    end
  end
end
