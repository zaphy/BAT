class CreateMembers < ActiveRecord::Migration
  def change
    create_table :members do |t|
      t.string :last_name
      t.string :first_name
      t.string :address_street
      t.string :address_house_number
      t.string :postal_code
      t.string :city
      t.date :birthday
      t.integer :team_id
      t.date :membership_started_on
      t.date :membership_finished_on
      t.boolean :enabled

      t.timestamps
    end
  end
end
