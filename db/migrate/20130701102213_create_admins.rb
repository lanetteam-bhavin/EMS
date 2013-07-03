class CreateAdmins < ActiveRecord::Migration
  def change
    create_table :admins do |t|
      t.string :AdminName,:limit => 25
      t.string :AdminEmail, :limit => 25
      t.string :password_digest
      t.timestamps
    end
  end
end
