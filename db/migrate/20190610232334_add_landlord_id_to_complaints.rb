class AddLandlordIdToComplaints < ActiveRecord::Migration[5.2]
  def change
    add_column :complaints, :landlord_id, :integer
  end
end
