class CreateShifts < ActiveRecord::Migration[5.0]
  def change
    create_table :shifts do |t|
      t.string :name
      t.string :time
      t.string :date
      # Set a status, 0 == undecided; 1 == happening; 2 == not happening; 3: something else
      t.integer :status
      t.timestamps
    end
  end
end
