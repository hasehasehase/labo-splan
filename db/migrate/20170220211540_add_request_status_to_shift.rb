class AddRequestStatusToShift < ActiveRecord::Migration[5.0]
  def change
    add_column :shifts, :req_status, :boolean
  end
end
