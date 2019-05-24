class CreateComplaints < ActiveRecord::Migration[5.2]
  def change
    create_table :complaints do |t|
      t.string :landlord_name

      t.timestamps
    end
  end
end
