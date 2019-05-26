class AddEnteredWoNoticeToComplaints < ActiveRecord::Migration[5.2]
  def change
    add_column :complaints, :entered_wo_notice, :boolean
  end
end
