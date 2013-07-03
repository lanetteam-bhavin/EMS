class CreateEmployees < ActiveRecord::Migration
  def change
    create_table :employees do |t|
      t.string :FirstName
      t.string :LastName
      t.string :email

      t.timestamps
    end
  end
end
