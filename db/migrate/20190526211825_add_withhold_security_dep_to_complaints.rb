class AddWithholdSecurityDepToComplaints < ActiveRecord::Migration[5.2]
  def change
    add_column :complaints, :withhold_security_dep, :boolean
  end
end
