class AddBuildingViolationToComplaints < ActiveRecord::Migration[5.2]
  def change
    add_column :complaints, :building_violation, :boolean
  end
end
