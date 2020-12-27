class CreateSensors < ActiveRecord::Migration[6.0]
  def change
    create_table :sensors do |t|
      t.integer :reference_id
      t.string :serial
      t.string :battery_status
      t.datetime :last_reported_date_time
      t.references :location

      t.timestamps
    end
  end
end
