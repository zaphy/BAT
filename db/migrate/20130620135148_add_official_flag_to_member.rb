class AddOfficialFlagToMember < ActiveRecord::Migration
  def change
    add_column :members, :official, :boolean, :default => false
  end
end
