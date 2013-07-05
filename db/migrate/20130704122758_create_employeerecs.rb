class CreateEmployeerecs < ActiveRecord::Migration
  def change
    create_table :employeerecs do |t|
      t.integer :employee_id
      t.integer :designation_id
      t.date :work_from
      t.date :work_to

      t.timestamps
    end
  end
end
