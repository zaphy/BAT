class AddRoleAttributesToMember < ActiveRecord::Migration
  def change
    add_column :members, :trainer, :boolean, :default => false
    add_column :members, :leader, :boolean, :default => false
    add_column :members, :logistic_responsible, :boolean, :default => false
    add_column :members, :kit_manager, :boolean, :default => false
    add_column :members, :communication_responsible, :boolean, :default => false
    add_column :members, :finance_responsible, :boolean, :default => false
    add_column :members, :referee, :boolean, :default => false
    remove_column :members, :official
  end
end
