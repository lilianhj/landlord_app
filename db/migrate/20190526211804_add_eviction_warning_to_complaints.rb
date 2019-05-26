class AddEvictionWarningToComplaints < ActiveRecord::Migration[5.2]
  def change
    add_column :complaints, :eviction_warning, :boolean
  end
end
