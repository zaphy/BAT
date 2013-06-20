class AddLicenceResponsibleAndTrainingCoordinatorToDepartment < ActiveRecord::Migration
  def change
    add_column :departments, :licence_responsible_id, :integer
    add_column :departments, :training_coordinator_id, :integer
  end
end
