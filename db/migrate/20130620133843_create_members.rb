class CreateMembers < ActiveRecord::Migration
  def change
    create_table :members do |t|
      t.string :last_name, :null => false
      t.string :first_name, :null => false
      t.string :address_street, :null => false
      t.string :address_house_number, :null => false
      t.string :postal_code, :null => false
      t.string :city, :null => false
      t.date :birthday
      t.integer :team_id
      t.date :membership_started_on
      t.date :membership_finished_on
      t.boolean :enabled, :default => false

      t.timestamps
    end
  end
end
