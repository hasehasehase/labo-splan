class AddLogToShift < ActiveRecord::Migration[5.0]
  def change
    add_column :shifts, :logs, :string
  end
end
