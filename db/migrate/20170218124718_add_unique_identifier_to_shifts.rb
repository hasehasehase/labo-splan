class AddUniqueIdentifierToShifts < ActiveRecord::Migration[5.0]
  def change
    add_column :shifts, :unique_identifier, :string
    add_index :shifts, :unique_identifier, unique: true
  end
end
