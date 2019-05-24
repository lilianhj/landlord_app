class AddComplaintToComplaints < ActiveRecord::Migration[5.2]
  def change
    add_column :complaints, :complaint, :string
  end
end
