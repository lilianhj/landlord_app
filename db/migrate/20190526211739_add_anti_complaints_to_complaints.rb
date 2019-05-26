class AddAntiComplaintsToComplaints < ActiveRecord::Migration[5.2]
  def change
    add_column :complaints, :anti_complaints, :boolean
  end
end
