class AddLandlordIdToComplaints < ActiveRecord::Migration[5.2]
  def change
    add_reference :complaints, :landlord, foreign_key: true
  end
end
