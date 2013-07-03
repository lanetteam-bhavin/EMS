class CreateSkills < ActiveRecord::Migration
  def change
    create_table :skills do |t|
      t.string :skill_name, limit: 30

      t.timestamps
    end
  end
end
