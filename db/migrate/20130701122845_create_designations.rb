class CreateDesignations < ActiveRecord::Migration
  def change
    create_table :designations do |t|
      t.string :desig_name

      t.timestamps
    end
  end
end
