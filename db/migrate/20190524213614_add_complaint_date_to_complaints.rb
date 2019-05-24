class AddComplaintDateToComplaints < ActiveRecord::Migration[5.2]
  def change
    add_column :complaints, :complaintdate, :datetime
  end
end
