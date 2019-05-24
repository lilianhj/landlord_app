class AddAddressToComplaints < ActiveRecord::Migration[5.2]
  def change
    add_column :complaints, :address, :string
  end
end
