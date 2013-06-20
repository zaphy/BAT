class CreateDepartments < ActiveRecord::Migration
  def change
    create_table :departments do |t|
      t.string :name, :null => false
      t.integer :leader_id
      t.integer :logistic_responsible_id
      t.integer :kit_manager_id
      t.integer :communication_responsible_id
      t.integer :finance_responsible_id
      t.integer :referee_id

      t.timestamps
    end
  end
end
