class CreateTeams < ActiveRecord::Migration
  def change
    create_table :teams do |t|
      t.string :name
      t.integer :trainer_id
      t.integer :deputy_trainer_id
      t.integer :department_id

      t.timestamps
    end
  end
end
